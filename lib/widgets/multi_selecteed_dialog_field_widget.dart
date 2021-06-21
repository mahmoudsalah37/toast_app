import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class MultiSelectedDilaogFieldWidget<T> extends StatefulWidget {
  const MultiSelectedDilaogFieldWidget({required this.items, this.title});
  final List<MultiSelectItem<T>> items;
  final Widget? title;
  @override
  _MultiSelectedDilaogFieldWidgetState createState() =>
      _MultiSelectedDilaogFieldWidgetState();
}

class _MultiSelectedDilaogFieldWidgetState<T>
    extends State<MultiSelectedDilaogFieldWidget> {
  List<T> initalValue = [];
  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField<T>(
      searchable: true,
      title: widget.title,
      listType: MultiSelectListType.CHIP,
      onConfirm: (val) {
        setState(() {
          initalValue = val;
        });
      },
      items: widget.items as List<MultiSelectItem<T>>,
      initialValue: initalValue,
    );
  }
}
