import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';
import '../provider/cart_provider.dart';
import '../widget/cart_app_bar_widget.dart';
import '../widget/cart_yellow_button.dart';
import '../widget/shopping_cart_item_widget.dart';
import '../widget/total_price_row_item_widget.dart';
import '../widget/total_price_widget.dart';

class OrderDetailsCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    var cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      body: cartProvider.getCartListLength != 0
          ? Stack(
              children: [
                ListView(
                  children: [
                    CustomCartAppBar(indicatorIndex: 1, title: 'Order Details'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child:
                          Text('Cart Items', style: theme.textTheme.bodyText1),
                    ),
                    SizedBox(
                      height: res.getHeight(45),
                      child: Scrollbar(
                        radius: Radius.circular(10),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: cartProvider.getCartListLength,
                          itemBuilder: (context, index) {
                            return ShoppingCartItemWidget(
                              cartItemModel: cartProvider.getCartList[index],
                              index: index,
                            );
                          },
                        ),
                      ),
                    ),
                    Divider(color: CustomColors.blueLightColor, thickness: 2),
                    SizedBox(height: res.getHeight(8)),
                    TotalPriceWidget(
                      children: [
                        TotalPriceRowItemWidget(
                          title: 'SubTotal',
                          price: cartProvider.getSubTotal,
                          // price: cartProvider.subTotalPrice,
                        ),
                        SizedBox(height: 8),
                        TotalPriceRowItemWidget(
                          title: 'VAT%',
                          price: cartProvider.getVat,
                          // price: cartProvider.vat,
                        ),
                        SizedBox(height: 8),
                        TotalPriceRowItemWidget(
                          title: 'Total',
                          price: cartProvider.getTotal,
                          // price: cartProvider.total,
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: res.getHeight(92),
                  child: CustomCartYellowButton(
                    title: 'Continue',
                    onTap: () => Navigator.pushNamed(
                        context, Routes.orderLocationDetailsPage),
                  ),
                ),
              ],
            )
          : Center(
              child: Text(
                'cart is empty',
                style: theme.textTheme.headline1,
              ),
            ),
    );
  }
}
