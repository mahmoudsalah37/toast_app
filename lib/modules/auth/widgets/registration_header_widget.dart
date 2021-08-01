import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/utils/classes/resposive.dart';
import 'package:toast_app/widgets/custom_stepper_dots.dart';

class RegistrationHeaderWidget extends StatelessWidget {
  final String title, subtitle;
  final int stepNumber;
  final Widget headerLabelInfo;
  final bool labelVisibility;

  RegistrationHeaderWidget({
    required this.title,
    required this.subtitle,
    required this.stepNumber,
    this.labelVisibility = true,
    this.headerLabelInfo = const Text(
      'We take privacy issues seriously. You can be sure that your personal data is securely protected.',
      style: TextStyle(
        color: CustomColors.blueColor,
        fontWeight: FontWeight.w800,
      ),
    ),
  });

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Hero(
          tag: 'register_hero',
          child: SvgPicture.asset(
            'assets/images/bottom_navigation/toast_icon.svg',
            height: res.getHeight(10),
          ),
        ),
        SizedBox(height: res.getHeight(2)),
        CustomStepperDots(indicatorIndex: stepNumber),
        SizedBox(height: res.getHeight(2)),
        Text(
          title,
          style: theme.textTheme.headline1!
              .copyWith(color: CustomColors.blueColor),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: res.getHeight(1)),
        Text(
          subtitle,
          style: theme.textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: res.getHeight(2)),
        Visibility(
          visible: labelVisibility,
          child: Container(
            width: res.getWidth(100),
            color: Colors.blue[100],
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              minLeadingWidth: 0,
              leading: Visibility(
                visible: stepNumber == 2 ? false : true,
                child: Icon(
                  Icons.lock,
                  color: CustomColors.blueColor,
                ),
              ),
              title: headerLabelInfo,
              trailing: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.edit, color: CustomColors.blueColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
