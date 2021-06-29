import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Colors.black12,
        width: res.getWidth(100),
        height: res.getHeight(100),
        child: Center(
          child: Container(
            decoration: CustomStyle.containerShadowDecoration.copyWith(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(20),
            child: CupertinoActivityIndicator(radius: 20),
          ),
        ),
      ),
    );
  }
}
