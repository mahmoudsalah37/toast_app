import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/theme.dart';

import 'favorite_icon_widget.dart';

class CompanyWidget extends StatelessWidget {
  final double itemPadding;
  final double itemWidth;
  final VoidCallback onTap;
  final String img, name, rate, distance, deliveryTime;

  CompanyWidget({
    required this.itemPadding,
    required this.itemWidth,
    required this.onTap,
    required this.img,
    required this.name,
    required this.rate,
    required this.distance,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: itemPadding),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: res.getHeight(25),
                      width: res.getWidth(itemWidth),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: FavoriteIconWidget(),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        name,
                        style: textTheme.headline2,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: CustomColors.blueColor),
                          Text(
                            rate,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.subtitle2,
                          ),
                        ],
                      ),
                      Text(
                        '$distance miles away',
                        style: textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: res.getHeight(6),
              right: res.getWidth(5),
              child: Container(
                width: 100,
                height: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFFDD54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Delivery\n$deliveryTime min',
                  textAlign: TextAlign.center,
                  style: textTheme.headline6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
