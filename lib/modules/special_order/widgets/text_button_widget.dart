import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(text),
      style: ButtonStyle(
        padding:
            MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15)),
        backgroundColor:
            MaterialStateProperty.all(Color.fromRGBO(255, 221, 84, 1)),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(89, 46, 30, 1),
          ),
        ),
      ),
    );
  }
}
