import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';
import 'package:toast_app/modules/shopping_cart/widget/cart_app_bar_widget.dart';
import 'package:toast_app/modules/shopping_cart/widget/cart_yellow_button.dart';
import 'package:toast_app/modules/shopping_cart/widget/total_price_row_item_widget.dart';
import 'package:toast_app/modules/shopping_cart/widget/total_price_widget.dart';
import '../../../utils/classes/resposive.dart';
import '../widget/shopping_cart_item_widget.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';

class OrderDetailsCartPage extends StatefulWidget {
  @override
  _OrderDetailsCartPageState createState() => _OrderDetailsCartPageState();
}

class _OrderDetailsCartPageState extends State<OrderDetailsCartPage> {
  late double subTotalPrice;
  late double vat = subTotalPrice * 14 / 100;
  late double total = subTotalPrice + vat;

  double getSubTotalPrice() {
    var cartProvider = Provider.of<CartProvider>(context, listen: false);
    var checkedPricesList = [];
    cartProvider.getCartList
        .forEach((element) => checkedPricesList.add(element.price));
    subTotalPrice = checkedPricesList.reduce((a, b) => a + b);
    return subTotalPrice;
  }

  @override
  void initState() {
    getSubTotalPrice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    var cartProvider = Provider.of<CartProvider>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              CustomCartAppBar(indicatorIndex: 1, title: 'Order Details'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Cart Items', style: theme.textTheme.bodyText1),
              ),
              SizedBox(
                height: res.getHeight(45),
                child:
                    Consumer<CartProvider>(builder: (context, cartProvider, w) {
                  return Scrollbar(
                    radius: Radius.circular(10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartProvider.getCartListLength,
                      itemBuilder: (context, index) {
                        return ShoppingCartItemWidget(
                          description:
                              cartProvider.getCartList[index].description,
                          companyName:
                              cartProvider.getCartList[index].placeName,
                          itemTitle: cartProvider.getCartList[index].itemName,
                          price: cartProvider.getCartList[index].price,
                          quantity: cartProvider.getCartList[index].quantity,
                          onTapPlus: () {
                            cartProvider.incrementQuantity(index);
                            // cartProvider.getCartList[index].quantity++;
                            print('plus pressed');
                          },
                          onTapMinus: () {
                            if (cartProvider.getCartList[index].quantity > 1) {
                              cartProvider.decrementQuantity(index);
                            } else {
                              cartProvider
                                  .deleteItem(cartProvider.getCartList[index]);
                            }
                          },
                        );
                      },
                    ),
                  );
                }),
              ),
              Divider(color: CustomColors.blueLightColor, thickness: 2),
              SizedBox(height: res.getHeight(8)),
              TotalPriceWidget(
                children: [
                  TotalPriceRowItemWidget(
                    title: 'SubTotal',
                    price: subTotalPrice,
                  ),
                  SizedBox(height: 8),
                  TotalPriceRowItemWidget(
                    title: 'VAT%',
                    price: vat,
                  ),
                  SizedBox(height: 8),
                  TotalPriceRowItemWidget(
                    title: 'Total',
                    price: total,
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: res.getHeight(92),
            child: CustomCartYellowButton(
              title: 'Continue',
              onTap: () =>
                  Navigator.pushNamed(context, Routes.orderLocationDetailsPage),
            ),
          ),
        ],
      ),
    );
  }
}
