import 'package:flutter/material.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class TotalPriceWidget extends StatelessWidget {
  final List<Widget> children;

  const TotalPriceWidget({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: res.getWidth(100),
      decoration: CustomStyle.containerShadowDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
