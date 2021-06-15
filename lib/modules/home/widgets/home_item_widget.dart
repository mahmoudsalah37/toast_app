import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/utils/classes/resposive.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/theme.dart';

import 'favorite_icon_widget.dart';

class CompanyWidget extends StatelessWidget {
  final double itemWidth;
  final VoidCallback onTap;
  final String img, name, rate, distance, deliveryTime;

  CompanyWidget({
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
    final res = Responsive(context);
    final textTheme = CustomsThemes.defaultThemeData.textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: Offset(0, 1),
              blurRadius: 4,
              spreadRadius: 2,
            ),
          ],
        ),
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
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: FavoriteIconWidget(
                        onChanged: (v) {},
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        name,
                        style: textTheme.headline2,
                      ),
                      AutoSizeText(
                        '★ $rate',
                        style: textTheme.subtitle2,
                        maxLines: 1,
                        minFontSize: 14,
                        maxFontSize: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
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
              top: res.getHeight(21),
              right: res.getWidth(5),
              child: Container(
                width: 100,
                height: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: CustomColors.yellowDeepColor,
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
