import 'package:flutter/material.dart';

class SearchTFW extends StatelessWidget {
  const SearchTFW({required this.text, required this.onChange});
  final String text;
  final void Function(String v) onChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            blurRadius: 8,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Colors.grey[50],
          filled: true,
          hintText: text,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 8),
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 8),
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
        onChanged: onChange,
      ),
    );
  }
}
