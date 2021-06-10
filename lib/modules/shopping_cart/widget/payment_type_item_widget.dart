import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/colors.dart';

class PaymentTypeItemWidget extends StatelessWidget {
  final Function() onTap;
  final String visaSerialNumber;

  const PaymentTypeItemWidget({
    required this.onTap,
    required this.visaSerialNumber,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: res.getWidth(35),
        alignment: Alignment.center,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: CustomColors.blueLightColor),
        ),
        child: AutoSizeText(
          visaSerialNumber,
          style: TextStyle(fontSize: 20, color: CustomColors.blueLightColor),
          maxLines: 1,
        ),
      ),
    );
  }
}
