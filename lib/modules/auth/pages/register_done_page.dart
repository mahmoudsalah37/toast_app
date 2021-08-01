import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';
import '../widgets/custom_outline_button.dart';

class RegisterDonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'register_hero',
                child: SvgPicture.asset(
                  'assets/images/bottom_navigation/toast_icon.svg',
                  height: res.getHeight(30),
                ),
              ),
              Text(
                'Your are toasted!',
                style: theme.textTheme.headline1!
                    .copyWith(color: CustomColors.blueColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: res.getHeight(1)),
              Center(
                child: Text(
                  'Thanks for join our family, you can order what you want \nfrom any where you want...',
                  style: theme.textTheme.subtitle2,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RegisterOutlineButton(
                title: 'Done',
                onPressed: () => Navigator.pushNamed(context, Routes.homePage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
