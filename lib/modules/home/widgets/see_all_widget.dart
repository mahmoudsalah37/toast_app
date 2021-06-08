import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeeAllWidget extends StatelessWidget {
  final void Function() onTap;
  SeeAllWidget({required this.onTap});

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
            'assets/images/home/see_all_icon.svg',
            height: 30,
            width: 30,
          ),
          SizedBox(height: 4),
          Text(
            'See All',
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
