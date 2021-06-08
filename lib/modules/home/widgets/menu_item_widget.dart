import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/theme.dart';

class MenuItemWidget extends StatelessWidget {
  late String title;
  late String description;
  late String price;
  late String img;

  MenuItemWidget(
      {required this.title,
      required this.description,
      required this.price,
      required this.img});

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.black,
      elevation: 3,
      borderOnForeground: true,
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: textTheme.headline4),
                Text(
                  description,
                  style: textTheme.subtitle1,
                  maxLines: 2,
                ),
                Text('SAR $price', style: textTheme.bodyText2),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                img,
                width: res.getWidth(30),
                height: res.getHeight(10),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
