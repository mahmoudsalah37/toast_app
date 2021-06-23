import 'package:flutter/material.dart';

class TotalPriceRowItemWidget extends StatelessWidget {
  final String title;
  final double price;

  const TotalPriceRowItemWidget({
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: theme.textTheme.overline),
        Text('SAR $price', style: theme.textTheme.overline),
      ],
    );
  }
}
