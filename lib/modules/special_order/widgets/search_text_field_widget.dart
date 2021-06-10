import 'package:flutter/material.dart';

class SearchTFW extends StatelessWidget {
  const SearchTFW({required this.text});
  final String text;
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
        decoration: InputDecoration(
          fillColor: Colors.grey[50],
          filled: true,
          hintText: text,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 8),
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
    );
  }
}
