import 'package:flutter/material.dart';
import 'package:toast_app/src/styles.dart';

class RegisterTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final String hint;
  final bool? obscureText;
  final Widget? suffixIcon;

  const RegisterTextField({
    required this.controller,
    required this.inputType,
    required this.hint,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: TextField(
        obscureText: obscureText ?? false,
        controller: controller,
        style: theme.textTheme.headline2,
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: CustomStyle.registerInputDecoration.copyWith(
          hintText: hint,
          suffixIcon: suffixIcon ,
        ),
      ),
    );
  }
}
