import 'package:flutter/material.dart';
import '../../../classes/resposive.dart';
import '../../../src/colors.dart';
import '../../../src/theme.dart';

class DropDownMenuWidget extends StatefulWidget {
  const DropDownMenuWidget({required this.items, required this.onChanged});
  final List<String> items;
  final void Function(String v) onChanged;
  @override
  _DropDownMenuWidgetState createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<DropDownMenuWidget> {
  late String dropdownValue = '';
  @override
  void initState() {
    super.initState();
    if (widget.items.isNotEmpty) dropdownValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final textTheme = CustomsThemes.defaultThemeData.textTheme;
    return Container(
      height: res.getHeight(6),
      width: res.getWidth(30),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CustomColors.yellowDeepColor,
      ),
      child: DropdownButton<String>(
        dropdownColor: CustomColors.yellowDeepColor,
        value: dropdownValue,
        // hint: Text('All'),
        underline: SizedBox(),
        icon: Icon(Icons.keyboard_arrow_down, color: Colors.brown),
        iconSize: res.getWidth(8),
        onChanged: (newValue) {
          setState(() {
            if (newValue != null) {
              dropdownValue = newValue;
              widget.onChanged(dropdownValue);
            }
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: textTheme.headline6),
          );
        }).toList(),
      ),
    );
  }
}
