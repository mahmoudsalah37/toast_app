import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../shopping_cart/provider/cart_provider.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Badge(
      position: BadgePosition.topEnd(top: 0, end: 5),
      animationDuration: Duration(milliseconds: 300),
      animationType: BadgeAnimationType.slide,
      badgeContent: AutoSizeText(
        Provider.of<CartProvider>(context).getCartListLength.toString(),
        style: TextStyle(color: Colors.white),
        maxLines: 1,
        maxFontSize: 13,
      ),
      child: child,
    );
  }
}
