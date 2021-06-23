import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/models/cart_model.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class ShoppingCartItemWidget extends StatelessWidget {
  final CartItemModel cartItemModel;
  final int index;

  const ShoppingCartItemWidget({
    required this.cartItemModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    var cartProvider = Provider.of<CartProvider>(context);
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(10),
      height: res.getHeight(17.5),
      decoration: CustomStyle.containerShadowDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cartItemModel.itemName, style: theme.textTheme.headline5),
              Text(cartItemModel.placeName, style: theme.textTheme.headline5),
            ],
          ),
          AutoSizeText(
            cartItemModel.description,
            style: theme.textTheme.subtitle2,
            maxLines: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () =>
                        cartProvider.getCartList[index].quantity > 1
                            ? cartProvider.decrementQuantity(index)
                            : cartProvider
                                .deleteItem(cartProvider.getCartList[index]),
                    icon: Icon(
                      cartItemModel.quantity == 1
                          ? Icons.delete_forever
                          : Icons.indeterminate_check_box_rounded,
                      color: CustomColors.blueLightColor,
                    ),
                  ),
                  AutoSizeText(
                    cartItemModel.quantity.toString(),
                    maxLines: 1,
                    style: theme.textTheme.headline5,
                  ),
                  IconButton(
                    onPressed: () => cartProvider.incrementQuantity(index),
                    icon: Icon(
                      Icons.add_box_rounded,
                      color: CustomColors.blueLightColor,
                    ),
                  ),
                ],
              ),
              Text('SAR ${cartItemModel.price}',
                  style: theme.textTheme.headline5),
            ],
          ),
        ],
      ),
    );
  }
}
