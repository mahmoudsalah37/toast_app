import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemWidget extends StatelessWidget {
  final String img;
  final String title;
  final void Function() onTap;
  CategoryItemWidget(
      {required this.title, required this.img, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            img,
            height: 30,
            width: 30,
            placeholderBuilder: (_) => SvgPicture.asset(
              'assets/svg/sand-clock.svg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0XFFCE6221),
            ),
          )
        ],
      ),
    );
  }
}
