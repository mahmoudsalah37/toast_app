import 'package:flutter/material.dart';

class EnterLocationTFW extends StatefulWidget {
  const EnterLocationTFW(
      {required this.hitText, required this.textEditingController});
  final String hitText;
  final TextEditingController textEditingController;
  @override
  _EnterLocationTFWState createState() => _EnterLocationTFWState();
}

class _EnterLocationTFWState extends State<EnterLocationTFW> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50]!,
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: widget.hitText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey[200]!),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey[200]!),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.textEditingController.dispose();
    super.dispose();
  }
}
