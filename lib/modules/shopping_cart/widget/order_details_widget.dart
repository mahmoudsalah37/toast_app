import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/classes/resposive.dart';
import '../../../src/colors.dart';
import '../../../src/styles.dart';

class OrderDetailsWidget extends StatelessWidget {
  late final String orderNumber;
  late final String driverName;
  late final String driverRate;
  late final String driverImg;
  late final VoidCallback onTapOrderDetails;
  late final VoidCallback onTapCallDriver;
  late final VoidCallback onTapChatDriver;

  OrderDetailsWidget({
    required this.orderNumber,
    required this.driverName,
    required this.driverRate,
    required this.driverImg,
    required this.onTapOrderDetails,
    required this.onTapCallDriver,
    required this.onTapChatDriver,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(
        top: res.getHeight(6),
        bottom: res.getHeight(3),
        left: res.getWidth(4),
        right: res.getWidth(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: res.getWidth(100),
            height: res.getHeight(9),
            padding: EdgeInsets.all(8),
            decoration: CustomStyle.containerShadowDecoration,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: CustomColors.yellowDeepColor,
                  ),
                ),
                SizedBox(width: res.getWidth(20)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '#Order',
                      style: theme.textTheme.headline5!.copyWith(
                        color: CustomColors.yellowDeepColor,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: CustomColors.blueLightColor),
                      ),
                      child: Text(
                        orderNumber,
                        style: theme.textTheme.subtitle2,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () => onTapOrderDetails(),
                child: Container(
                  width: res.getWidth(70),
                  height: res.getHeight(6),
                  decoration: CustomStyle.containerShadowDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/bottom_navigation/home_icon.svg',
                        color: CustomColors.accentColor,
                      ),
                      Text(
                        'Order Details',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: res.getHeight(11),
                margin: EdgeInsets.only(top: 14),
                decoration: CustomStyle.containerShadowDecoration,
                child: ListTile(
                  contentPadding: EdgeInsets.only(bottom: 10, left: 10),
                  leading: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(driverImg),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        driverName,
                        style: theme.textTheme.headline5,
                        maxLines: 1,
                      ),
                      Text(
                        '★ $driverRate',
                        style: theme.textTheme.headline4!
                            .copyWith(color: CustomColors.accentColor),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: res.getWidth(35),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => onTapChatDriver(),
                          child: Icon(
                            Icons.message,
                            color: Colors.blue,
                            size: 18,
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(8),
                            primary: Colors.white, // <-- Button color
                            side: BorderSide(color: Colors.blue),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => onTapCallDriver(),
                          child: Icon(
                            Icons.phone_enabled_rounded,
                            color: Colors.blue,
                            size: 18,
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(8),
                              primary: Colors.white, // <-- Button color
                              side: BorderSide(color: Colors.blue)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
