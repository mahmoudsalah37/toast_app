import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/custom_outline_button.dart';
import '../widgets/register_app_bar.dart';
import '../widgets/register_text_field.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';
import '../../../widgets/custom_stepper_dots.dart';

class RegisterStepOnePage extends StatefulWidget {
  @override
  _RegisterStepOnePageState createState() => _RegisterStepOnePageState();
}

class _RegisterStepOnePageState extends State<RegisterStepOnePage> {
  final TextEditingController firstNameTEC = TextEditingController(text: ''),
      lastNameTEC = TextEditingController(text: ''),
      emailTEC = TextEditingController(text: ''),
      passwordTEC = TextEditingController(text: ''),
      phoneNumberTEC = TextEditingController(text: '');

  bool passwordVisibility = true;

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(res.getHeight(6)),
        child: RegisterAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Hero(
                  tag: 'register_hero',
                  child: SvgPicture.asset(
                    'assets/images/bottom_navigation/toast_icon.svg',
                    height: res.getHeight(10),
                  ),
                ),
                Center(child: CustomStepperDots(indicatorIndex: 1)),
                SizedBox(height: res.getHeight(2)),
                Text(
                  'Registration',
                  style: theme.textTheme.headline1!
                      .copyWith(color: CustomColors.blueColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: res.getHeight(1)),
                Text(
                  'Fill in the registration data. It will take a couple of minutes. All you need is a phone number.',
                  style: theme.textTheme.subtitle2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: res.getHeight(2)),
                Container(
                  width: res.getWidth(100),
                  color: Colors.blue[100],
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.lock,
                      color: CustomColors.blueColor,
                    ),
                    title: Text(
                      'We take privacy issues seriously. You can be sure that your personal data is securely protected.',
                      style: theme.textTheme.headline4!
                          .copyWith(color: CustomColors.blueColor),
                      textAlign: TextAlign.center,
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: CustomColors.blueColor,
                    ),
                  ),
                ),
                SizedBox(height: res.getHeight(2)),
                Container(
                  height: res.getHeight(45),
                  child: Form(
                    child: Column(
                      children: [
                        RegisterTextField(
                          controller: firstNameTEC,
                          hint: 'First Name',
                          inputType: TextInputType.text,
                        ),
                        RegisterTextField(
                          controller: lastNameTEC,
                          hint: 'Last Name',
                          inputType: TextInputType.text,
                        ),
                        RegisterTextField(
                          controller: emailTEC,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                        ),
                        RegisterTextField(
                          controller: passwordTEC,
                          hint: 'Password',
                          inputType: TextInputType.visiblePassword,
                          obscureText: passwordVisibility,
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisibility
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: CustomColors.blueColor,
                            ),
                            onPressed: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                          ),
                        ),
                        RegisterTextField(
                          controller: phoneNumberTEC,
                          hint: 'Phone Number',
                          inputType: TextInputType.phone,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: RegisterOutlineButton(
              onPressed: () => Navigator.pushNamed(
                context,
                Routes.registerStepTwoPage,
              ),
              width: 40,
              height: 10,
              title: 'Send Code',
            ),
          ),
        ],
      ),
    );
  }
}
