import 'package:flutter/material.dart';

import '../../../src/styles.dart';

// ignore: must_be_immutable
class RegisterTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final String hint;
  final FormFieldValidator<String>? validator;
  final bool obscureText;
  final Widget? suffixIcon;

  RegisterTextField({
    required this.controller,
    required this.inputType,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        style: theme.textTheme.headline2,
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: CustomStyle.registerInputDecoration.copyWith(
          hintText: hint,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
