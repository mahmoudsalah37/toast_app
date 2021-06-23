import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toast_app/modules/splash_and_sign_up/widgets/custom_outline_button.dart';
import 'package:toast_app/modules/splash_and_sign_up/widgets/register_app_bar.dart';
import 'package:toast_app/modules/splash_and_sign_up/widgets/register_text_field.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/classes/resposive.dart';
import 'package:toast_app/widgets/custom_stepper_dots.dart';

class RegisterStepTwoPage extends StatelessWidget {
  final TextEditingController codeTEC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(res.getHeight(6)),
        child: RegisterAppBar(),
      ),
      body: ListView(
        children: [
          SvgPicture.asset(
            'assets/images/bottom_navigation/toast_icon.svg',
            height: res.getHeight(10),
          ),
          Center(child: CustomStepperDots(indicatorIndex: 2)),
          SizedBox(height: res.getHeight(4)),
          Text(
            'Verification',
            style: theme.textTheme.headline1!
                .copyWith(color: CustomColors.blueColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: res.getHeight(2)),
          Text(
            'You will get a verification code via SMS to your number, please enter the code below:',
            style: theme.textTheme.subtitle2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: res.getHeight(3)),
          Container(
            width: res.getWidth(100),
            color: Colors.blue[100],
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Text(
                '+1 555 555-1234',
                style: theme.textTheme.headline2!
                    .copyWith(color: CustomColors.blueColor),
              ),
              subtitle: Text('Number not confirmed yet',
                  style: theme.textTheme.subtitle2),
              trailing: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.edit, color: CustomColors.blueColor),
              ),
            ),
          ),
          SizedBox(height: res.getHeight(3)),
          RegisterTextField(
            controller: codeTEC,
            hint: 'Verification Code',
            inputType: TextInputType.number,
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.rotate_right, color: CustomColors.blueLightColor),
                Text('Resend Code', style: theme.textTheme.subtitle2)
              ],
            ),
          ),
          SizedBox(height: res.getHeight(14)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: RegisterOutlineButton(
              onPressed: () => Navigator.pushNamed(
                context,
                Routes.registerStepThreePage,
              ),
              title: 'Verify',
            ),
          ),
        ],
      ),
    );
  }
}
