import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/modules/shopping_cart/widget/add_copon_custom_painter.dart';
import 'package:toast_app/modules/shopping_cart/widget/clear_cart_items_dialog.dart';
import 'package:toast_app/modules/shopping_cart/widget/payment_type_item_widget.dart';
import 'package:toast_app/modules/shopping_cart/widget/shopping_cart_item_widget.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  bool _couponBtnVisibility = false;

  late final AnimationController _controller = AnimationController(
    duration: Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(1, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back_ios,
                            color: CustomColors.yellowDeepColor),
                      ),
                      Text('New Order'),
                      IconButton(
                        onPressed: () => clearCartItemsDialog(
                          context: context,
                          onTapYes: () => Navigator.pop(context),
                        ),
                        icon: SvgPicture.asset(
                            'assets/images/shopping_cart/delete_basket_icon.svg'),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Cart Items', style: theme.textTheme.bodyText1),
              ),
              SizedBox(
                height: res.getHeight(35),
                child: Scrollbar(
                  radius: Radius.circular(10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ShoppingCartItemWidget(
                        description:
                            'Color: Red, Size: L, Note: Make sure it’s not long sleeve: Make sure it’s not long sleeve',
                        companyName: 'Zara',
                        itemTitle: 'Casual T-shirt',
                        price: 20,
                        quantity: 4,
                        onTapMinus: () {},
                        onTapPlus: () {},
                      );
                    },
                  ),
                ),
              ),
              Divider(color: CustomColors.blueLightColor, thickness: 2),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Type', style: theme.textTheme.bodyText1),
                    SizedBox(
                      width: res.getWidth(16),
                      height: res.getHeight(4),
                      child: OutlineButton(
                        onPressed: () {},
                        borderSide: BorderSide(
                          color: CustomColors.blueLightColor,
                        ),
                        child: Icon(
                          Icons.add,
                          color: CustomColors.blueLightColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: res.getHeight(8),
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PaymentTypeItemWidget(
                      visaSerialNumber: '*****1234',
                      onTap: () {},
                    );
                  },
                ),
              ),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _couponBtnVisibility = true;
                        _controller.forward();
                      });
                    },
                    onHorizontalDragUpdate: (e) {
                      setState(() {
                        if (e.delta.dx < 0) {
                          _controller.forward();
                          _couponBtnVisibility = true;
                        }
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: res.getWidth(20)),
                        Shimmer.fromColors(
                          highlightColor: Colors.lightBlueAccent,
                          direction: ShimmerDirection.rtl,
                          baseColor: CustomColors.blueColor,
                          period: Duration(milliseconds: 800),
                          child: Text('<<< Slide to add coupon',
                              style: theme.textTheme.subtitle2),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomPaint(
                              size: Size(res.getWidth(30), res.getHeight(8)),
                              painter:
                                  AddCouponCustomPainter(color: Colors.white),
                            ),
                            Text('Coupon', style: theme.textTheme.overline)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: _couponBtnVisibility,
                    child: SlideTransition(
                      position: _offsetAnimation,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: res.getWidth(2)),
                          SizedBox(
                            width: res.getWidth(60),
                            child: TextField(
                              decoration: CustomStyle.homeSearchInputDecoration
                                  .copyWith(
                                      fillColor: Colors.blue[200],
                                      hintText: 'Coupon...'),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_controller.isCompleted)
                                _controller.reverse();
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomPaint(
                                  size:
                                      Size(res.getWidth(30), res.getHeight(8)),
                                  painter: AddCouponCustomPainter(
                                      color: CustomColors.blueColor),
                                ),
                                Text(
                                  'Enter',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: res.getWidth(100),
                height: res.getHeight(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ListTile(l),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('VAT%', style: theme.textTheme.overline),
                        Text('SAR 60', style: theme.textTheme.overline),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount', style: theme.textTheme.overline),
                        Text('SAR 20', style: theme.textTheme.overline),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total', style: theme.textTheme.overline),
                        Text('SAR 20', style: theme.textTheme.overline),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: res.getHeight(92),
            child: SizedBox(
              width: res.getWidth(100),
              child: FlatButton(
                color: CustomColors.yellowDeepColor,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Continue', style: theme.textTheme.headline6),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
