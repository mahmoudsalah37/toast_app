import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/home/models/product/product_model.dart';
// import 'package:toast_app/modules/shopping_cart/models/cart_model.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';

import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class ShoppingCartItemWidget extends StatelessWidget {
  final ProductModel product;
  final int index;

  const ShoppingCartItemWidget({
    required this.product,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
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
              Text(product.title, style: theme.textTheme.headline5),
              Text('', style: theme.textTheme.headline5),
            ],
          ),
          AutoSizeText(
            product.metaModel.content,
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
                        cartProvider.getProducts.elementAt(index).quantity > 1
                            ? cartProvider.decrementQuantity(index)
                            : cartProvider.deleteItem(
                                cartProvider.getProducts.elementAt(index)),
                    icon: Icon(
                      product.quantity == 1
                          ? Icons.delete_forever
                          : Icons.indeterminate_check_box_rounded,
                      color: CustomColors.blueLightColor,
                    ),
                  ),
                  AutoSizeText(
                    product.quantity.toString(),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      '${product.quantity} * ${product.totalPrice.toStringAsFixed(2)}',
                      style: theme.textTheme.headline5
                          ?.copyWith(fontSize: 10, color: Colors.black)),
                  Text('SAR ${product.totalPrice}',
                      style: theme.textTheme.headline5),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
