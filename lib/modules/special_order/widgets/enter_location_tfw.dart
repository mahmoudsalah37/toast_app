import 'package:flutter/material.dart';
import 'package:toast_app/src/routes.dart';

class EnterLocationTFW extends StatefulWidget {
  const EnterLocationTFW(
      {required this.hitText, required this.textEditingController});
  final String hitText;
  final TextEditingController textEditingController;

  @override
  _EnterLocationTFWState createState() => _EnterLocationTFWState();
}

class _EnterLocationTFWState extends State<EnterLocationTFW> {
  bool isEmptyField = true;
  @override
  void initState() {
    super.initState();
    checkTextField();
    widget.textEditingController.addListener(() {
      checkTextField();
      setState(() {});
    });
  }

  void checkTextField() {
    if (widget.textEditingController.text.isEmpty) {
      isEmptyField = true;
    } else {
      isEmptyField = false;
    }
  }

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
        readOnly: true,
        decoration: InputDecoration(
          suffixIcon: changeIcons(),
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

  Widget? changeIcons() => isEmptyField
      ? IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .pushNamed(Routes.newSpecialOrderPickStorePage);
          },
        )
      : IconButton(
          icon: Icon(Icons.delete_forever),
          onPressed: () {
            widget.textEditingController.clear();
          },
        );

  @override
  void dispose() {
    widget.textEditingController.dispose();
    super.dispose();
  }
}
