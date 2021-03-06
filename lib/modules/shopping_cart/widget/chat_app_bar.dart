import 'package:flutter/material.dart';
import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class ChatAppBar extends StatelessWidget {
  final String driverName;
  final String driverImg;
  final double driverRate;

  const ChatAppBar({
    required this.driverName,
    required this.driverImg,
    required this.driverRate,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Container(
      width: res.getWidth(100),
      margin: EdgeInsets.only(
          top: res.getHeight(5), left: 10, right: 10, bottom: 10),
      padding: EdgeInsets.all(16),
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
    );
  }
}
