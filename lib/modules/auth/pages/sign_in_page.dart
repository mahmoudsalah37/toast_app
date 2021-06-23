import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/custom_outline_button.dart';
import '../widgets/custom_sign_in_button.dart';
import '../widgets/register_text_field.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailTEC = TextEditingController(text: ''),
      passwordTEC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
              tag: 'register_hero',
              child: SvgPicture.asset(
                'assets/images/bottom_navigation/toast_icon.svg',
                height: res.getHeight(20),
              ),
            ),
            SizedBox(height: res.getHeight(2)),
            Center(
              child: Text(
                'Sign In',
                style: theme.textTheme.headline1!
                    .copyWith(color: CustomColors.blueLightColor),
              ),
            ),
            SizedBox(height: res.getHeight(4)),
            RegisterTextField(
              controller: emailTEC,
              hint: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            RegisterTextField(
              controller: passwordTEC,
              hint: 'Password',
              inputType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Forget Password ?',
                style: theme.textTheme.headline2!
                    .copyWith(color: CustomColors.blueLightColor),
              ),
            ),
            SizedBox(height: res.getHeight(2)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: res.getWidth(20)),
              child: RegisterOutlineButton(
                title: 'Sign in',
                onPressed: () {},
                backgroundColor: CustomColors.blueColor,
                textColor: Colors.white,
              ),
            ),
            SizedBox(height: res.getHeight(2)),
            Row(
              children: <Widget>[
                Expanded(child: Divider(color: CustomColors.blueColor)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'OR',
                    style: theme.textTheme.headline2,
                  ),
                ),
                Expanded(child: Divider(color: CustomColors.blueColor)),
              ],
            ),
            SizedBox(height: res.getHeight(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSignInButton(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/sign_in/google_icon.svg',
                        width: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Sign With Google',
                        style: theme.textTheme.subtitle1!
                            .copyWith(color: CustomColors.blueColor),
                      )
                    ],
                  ),
                ),
                SizedBox(width: res.getWidth(4)),
                CustomSignInButton(
                  onTap: () => Navigator.pushNamed(context, Routes.homePage),
                  child: Text(
                    'Go as guest',
                    style: theme.textTheme.headline2!
                        .copyWith(color: CustomColors.blueColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: res.getHeight(2)),
            Divider(color: CustomColors.blueColor),
            SizedBox(height: res.getHeight(2)),
            TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, Routes.registerPersonalInfoPage),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'If you don’t have account',
                  style: theme.textTheme.headline2,
                  children: [
                    TextSpan(
                      text: ' SignUp!',
                      style: theme.textTheme.headline2!.copyWith(
                          color: CustomColors.blueColor,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
