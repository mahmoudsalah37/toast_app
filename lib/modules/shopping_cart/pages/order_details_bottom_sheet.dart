import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';
import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';
import '../widget/ordered_details_bottom_sheet_item.dart';

class OrderDetailBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    return Container(
      height: res.getHeight(73.5),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: res.getHeight(70),
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: theme.textTheme.headline6!
                        .copyWith(color: CustomColors.blueLightColor),
                  ),
                  Container(
                    height: res.getHeight(12),
                    width: res.getWidth(100),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(14),
                    decoration: CustomStyle.containerShadowDecoration.copyWith(
                      border: Border.all(color: CustomColors.blueLightColor),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home',
                          style: theme.textTheme.headline5,
                        ),
                        AutoSizeText(
                          'Maryotya Haram, al saad towers, Giza, Egypt',
                          style: theme.textTheme.subtitle1,
                          maxLines: 1,
                          maxFontSize: 20,
                          minFontSize: 12,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Mobile : 0123456789',
                          style: theme.textTheme.subtitle1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Items',
                    style: theme.textTheme.headline6!
                        .copyWith(color: CustomColors.blueLightColor),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartProvider.getProductLength,
                      itemBuilder: (_, index) {
                        final data = cartProvider.getProducts.elementAt(index);
                        return OrderedDetailsBottomSheetItem(
                          orderTitle: data.title,
                          orderPlaceName: '',
                          orderDescription: data.title,
                          orderPrice: data.priceModel.price.toString(),
                          orderQuantity: data.quantity.toString(),
                          backgroundColor: Colors.white,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: res.getWidth(16),
            left: res.getWidth(16),
            child: Container(
              height: res.getHeight(7),
              padding: EdgeInsets.all(6),
              decoration: CustomStyle.containerShadowDecoration,
              child: Text(
                'Preparing',
                style: theme.textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
