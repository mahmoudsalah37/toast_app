import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class CancelOrderDialogWidget extends StatefulWidget {
  @override
  _CancelOrderDialogWidgetState createState() =>
      _CancelOrderDialogWidgetState();
}

class _CancelOrderDialogWidgetState extends State<CancelOrderDialogWidget> {
  bool changeEmoji = false;

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                height: res.getHeight(20),
                padding: EdgeInsets.only(top: 40),
                margin: EdgeInsets.only(top: 40),
                decoration: CustomStyle.containerShadowDecoration
                    .copyWith(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Are you sure to cancel order ?',
                      style: theme.textTheme.headline2!
                          .copyWith(color: Colors.red),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              changeEmoji = true;
                              Future.delayed(Duration(milliseconds: 500), () {
                                Navigator.pop(context);
                              });
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side:
                            BorderSide(color: CustomColors.blueLightColor),
                            shape: StadiumBorder(),
                          ),
                          child: Text('No', style: theme.textTheme.subtitle2),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.red),
                            shape: StadiumBorder(),
                          ),
                          child: Text('Yes',
                              style: theme.textTheme.subtitle2!
                                  .copyWith(color: Colors.red)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Lottie.asset(
                  changeEmoji
                      ? 'assets/lottie/happy_emoji_lottie.json'
                      : 'assets/lottie/sad_emoji_lottie.json',
                  width: 80,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
