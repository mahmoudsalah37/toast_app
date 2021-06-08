import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SeeIconWidget extends StatelessWidget {
  final void Function() onTap;
  final bool isShowAll;
  SeeIconWidget({required this.onTap, required this.isShowAll});

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
            changeSeeIcon(),
            height: 30,
            width: 30,
            color: Color.fromRGBO(206, 98, 33, 1),
          ),
          SizedBox(height: 4),
          Text(
            changeText(),
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

  String changeText() => isShowAll ? 'collapse' : 'See All';

  String changeSeeIcon() => isShowAll
      ? 'assets/images/home/collapse.svg'
      : 'assets/images/home/see_all_icon.svg';
}
