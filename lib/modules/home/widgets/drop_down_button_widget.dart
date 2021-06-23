import 'package:flutter/material.dart';

import '../../../src/colors.dart';

class DropDownButtonWidget<T> extends StatefulWidget {
  DropDownButtonWidget(
      {required this.items,
      required this.onChanged,
      required this.itemBuilder,
      this.labelText,
      this.initalValue,
      this.dropdownColor});

  final List<T> items;
  final void Function(T? v) onChanged;
  final DropdownMenuItem<T> Function(T item) itemBuilder;
  final String? labelText;
  final T? initalValue;
  final Color? dropdownColor;
  @override
  _DropDownButtonWidgetState<T> createState() =>
      _DropDownButtonWidgetState<T>();
}

class _DropDownButtonWidgetState<T> extends State<DropDownButtonWidget<T>> {
  T? value;
  @override
  void initState() {
    super.initState();
    if (widget.initalValue != null) {
      value = widget.initalValue;
    } else if (widget.items.isNotEmpty) {
      value = widget.items.first;
      // widget.onChanged(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButtonFormField<T>(
      itemHeight: 50,
      icon: Icon(Icons.keyboard_arrow_down, color: Colors.brown),
      dropdownColor: widget.dropdownColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: CustomColors.yellowDeepColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 8),
        labelText: widget.labelText,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: CustomColors.yellowDeepColor, width: 1),
        ),
      ),
      iconEnabledColor: theme.primaryColor,
      isExpanded: true,
      value: value,
      items: widget.items
          .map(
            (e) => widget.itemBuilder(e),
          )
          .toList(),
      onChanged: (v) {
        setState(() {
          value = v;
          widget.onChanged(v);
        });
      },
    );
  }
}
