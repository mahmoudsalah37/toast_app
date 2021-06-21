import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonWidget extends StatelessWidget {
  const LikeButtonWidget();

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      bubblesColor: BubblesColor(
        dotPrimaryColor: Colors.redAccent,
        dotSecondaryColor: Colors.redAccent,
        dotLastColor: Colors.redAccent,
        dotThirdColor: Colors.redAccent,
      ),
      circleColor: CircleColor(
        start: Colors.redAccent,
        end: Colors.red,
      ),
      onTap: (v) async {
        return !v;
      },
    );
  }
}
