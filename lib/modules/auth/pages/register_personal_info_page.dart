import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/auth/model/register/register_model.dart';
import 'package:toast_app/modules/auth/widgets/registration_header_widget.dart';
import 'package:toast_app/widgets/loading_indicator.dart';
import 'package:toast_app/extensions/regular_expression.dart';

import '../../../src/colors.dart';
import '../../../utils/classes/resposive.dart';
import '../provider/register_provider.dart';
import '../widgets/custom_outline_button.dart';
import '../widgets/register_app_bar.dart';
import '../widgets/register_text_field.dart';

class RegisterPersonalInfoPage extends StatelessWidget {
  final TextEditingController firstNameTEC = TextEditingController(text: ''),
      lastNameTEC = TextEditingController(text: ''),
      emailTEC = TextEditingController(text: ''),
      passwordTEC = TextEditingController(text: ''),
      phoneNumberTEC = TextEditingController(text: '');
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final registerProvider = Provider.of<RegisterProvider>(context);
    return ModalProgressHUD(
      inAsyncCall: registerProvider.loadingIndicator,
      opacity: 0.5,
      progressIndicator: LoadingIndicator(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(res.getHeight(6)),
          child: RegisterAppBar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  RegistrationHeaderWidget(
                    title: 'Registration',
                    subtitle:
                        'Fill in the registration data. It will take a couple of minutes. All you need is a phone number.',
                    stepNumber: 1,
                  ),
                  SizedBox(height: res.getHeight(2)),
                  Container(
                    height: res.getHeight(45),
                    child: Form(
                      key: formKey,
                      child: ListView(
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
                            validator: (v) {
                              if (v!.isEmpty)
                                return 'Email is required';
                              else if (v.isNotValidEmail())
                                return 'Invalid Email';
                              return null;
                            },
                          ),
                          RegisterTextField(
                            controller: passwordTEC,
                            hint: 'Password',
                            inputType: TextInputType.visiblePassword,
                            obscureText: registerProvider.getPasswordVisibility,
                            suffixIcon: IconButton(
                              icon: Icon(
                                registerProvider.getPasswordVisibility
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: CustomColors.blueColor,
                              ),
                              onPressed: () =>
                                  registerProvider.changePasswordVisibility(),
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
            SafeArea(
              child: RegisterOutlineButton(
                onPressed: () async => await registerProvider.register(
                  registerModel: RegisterModel(
                    email: emailTEC.text,
                    password: passwordTEC.text,
                    firstName: firstNameTEC.text,
                    lastName: lastNameTEC.text,
                    phone: '+${phoneNumberTEC.text}',
                  ),
                  formKey: formKey,
                  context: context,
                ),
                width: 40,
                title: 'Send Code',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
