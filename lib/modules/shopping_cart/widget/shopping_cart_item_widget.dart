import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../utils/classes/resposive.dart';
import '../../../src/colors.dart';

class ShoppingCartItemWidget extends StatelessWidget {
  final Function() onTapPlus;
  final Function() onTapMinus;
  final String itemTitle;
  final String companyName;
  final String description;
  final double price;
  final int quantity;

  const ShoppingCartItemWidget({
    required this.onTapPlus,
    required this.onTapMinus,
    required this.itemTitle,
    required this.companyName,
    required this.price,
    required this.description,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(10),
      height: res.getHeight(17.5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(itemTitle, style: theme.textTheme.headline5),
              Text(companyName, style: theme.textTheme.headline5),
            ],
          ),
          AutoSizeText(
            description,
            style: theme.textTheme.subtitle2,
            maxLines: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: onTapMinus,
                    icon: Icon(
                      Icons.indeterminate_check_box_rounded,
                      color: CustomColors.blueLightColor,
                    ),
                  ),
                  AutoSizeText(
                    quantity.toString(),
                    maxLines: 1,
                    style: theme.textTheme.headline5,
                  ),
                  IconButton(
                    onPressed: onTapPlus,
                    icon: Icon(
                      Icons.add_box_rounded,
                      color: CustomColors.blueLightColor,
                    ),
                  ),
                ],
              ),
              Text('SAR $price', style: theme.textTheme.headline5),
            ],
          ),
        ],
      ),
    );
  }
}
