import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/models/place_order/place_order_model.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';
import 'package:toast_app/modules/shopping_cart/services/place_order_service.dart';
import '../widget/add_coupon_animation_widget.dart';
import '../widget/cart_app_bar_widget.dart';
import '../widget/cart_yellow_button.dart';
import '../widget/driver_details_widget.dart';
import '../widget/total_price_row_item_widget.dart';
import '../widget/total_price_widget.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class PlaceOrderPage extends StatefulWidget {
  @override
  _PlaceOrderPageState createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  int selectedIndex = 0;
  TextEditingController couponTEC = TextEditingController(text: '');

  _isSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomCartAppBar(title: 'Total Order', indicatorIndex: 3),
              DriverDetailsWidget(
                haveShadow: true,
                driverName: 'Ahmed Nasser',
                driverImg: 'assets/test/banner_three.png',
                driverRate: '4.8',
                driverPriceOffer: '90',
                driverDeliveryTime: '15',
                driverDistance: '15',
              ),
              Divider(color: CustomColors.yellowDeepColor, thickness: 2),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Payment Type', style: theme.textTheme.bodyText1),
                    SizedBox(
                      width: res.getWidth(16),
                      height: res.getHeight(4),
                      child: OutlinedButton(
                        onPressed: () {},
                        child:
                            Icon(Icons.add, color: CustomColors.blueLightColor),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: CustomColors.blueLightColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                    return GestureDetector(
                      onTap: () {
                        _isSelected(index);
                      },
                      child: Container(
                        width: res.getWidth(35),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? CustomColors.blueLightColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: CustomColors.blueLightColor),
                        ),
                        child: AutoSizeText(
                          '*********63823',
                          style: TextStyle(
                            fontSize: 20,
                            color: selectedIndex == index
                                ? Colors.white
                                : CustomColors.blueLightColor,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    );
                  },
                ),
              ),
              AddCouponAnimationWidget(
                onTapEnterCoupon: () {
                  print(couponTEC.text);
                  couponTEC.clear();
                },
                textFieldCoupon: TextField(
                  controller: couponTEC,
                  style: theme.textTheme.headline2,
                  decoration: CustomStyle.homeSearchInputDecoration.copyWith(
                    fillColor: Colors.blue[200],
                    hintText: 'Coupon...',
                  ),
                ),
              ),
              TotalPriceWidget(
                children: [
                  TotalPriceRowItemWidget(
                      title: 'SubTotal', price: cartProvider.getSubtotalPice),
                  SizedBox(height: 8),
                  TotalPriceRowItemWidget(
                      title: 'VAT%', price: cartProvider.getVat),
                  SizedBox(height: 8),
                  TotalPriceRowItemWidget(title: 'Delivery', price: 20),
                  SizedBox(height: 8),
                  TotalPriceRowItemWidget(title: 'Discount', price: -12),
                  SizedBox(height: 8),
                  TotalPriceRowItemWidget(
                      title: 'Total',
                      price: (cartProvider.getSubtotalPice +
                          cartProvider.getVat +
                          20 -
                          12).floorToDouble()),
                ],
              ),
              SizedBox(height: res.getHeight(5)),
            ],
          ),
          Positioned(
            top: res.getHeight(92),
            child: CustomCartYellowButton(
                title: 'Place Order',
                onPressed: () async {
                  // final response = await PlaceOrderService.placeOrder(
                  //   placeOrderModel: PlaceOrderModel(
                  //     orderId: 3,
                  //     driverId: 2,
                  //     deliveryFees: 74,
                  //   ),
                  // );
                  // final get  = PlaceOrderModel.fromJson(response as Map<String,dynamic>);
                  // final s = get.toJson()[''];
                  // print('id = ${response.data['data']['id']}');
                  // print('driverId = ${response.data['data']['driver_id']}');
                  // print('delivery_fees = ${response.data['data']['delivery_fees']}');
                  Navigator.pushNamed(context, Routes.orderAcceptedPage);
                }),
          )
        ],
      ),
    );
  }
}

class GetResponse {}
