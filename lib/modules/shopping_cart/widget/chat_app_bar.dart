import 'package:flutter/material.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class ChatAppBar extends StatelessWidget {
  final String driverName;
  final String driverImg;
  final double driverRate;

  const ChatAppBar({required this.driverName, required this.driverImg, required this.driverRate});

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: res.getHeight(3),horizontal: 12),
      child: Container(
        width: res.getWidth(100),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: CustomStyle.containerShadowDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child:
              Icon(Icons.arrow_back_ios, color: CustomColors.yellowDeepColor),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  driverName,
                  style: theme.textTheme.headline5,
                ),
                Text(
                  '★ $driverRate',
                  style: theme.textTheme.headline3!
                      .copyWith(color: CustomColors.accentColor),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Container(
              width: res.getWidth(16),
              height: res.getHeight(6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(driverImg),
                  ),
                  shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}
