import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/theme.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String img;
  final Function() onTap;

  MenuItemWidget({
    required this.title,
    required this.description,
    required this.price,
    required this.img,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: res.getWidth(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      title,
                      style: textTheme.headline5,
                      maxLines: 1,
                      minFontSize: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: AutoSizeText(
                        description,
                        style: textTheme.subtitle1,
                        maxLines: 2,
                        minFontSize: 6,
                      ),
                    ),
                    Text('SAR $price', style: textTheme.caption),
                  ],
                ),
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
      ),
    );
  }
}
