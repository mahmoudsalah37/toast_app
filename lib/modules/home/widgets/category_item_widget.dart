import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemWidget extends StatelessWidget {
  late String img;
  late String title;

  CategoryItemWidget({required this.title, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(img),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            color: Color(0XFFCE6221),
          ),
        )
      ],
    );
  }
}
