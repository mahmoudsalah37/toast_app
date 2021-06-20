import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';

import '../modules/home/models/category/category_model.dart';

class DirectSelectListWidget extends StatelessWidget {
  DirectSelectListWidget(
      {required this.categories,
      this.defaultItemIndex = 0,
      this.focusedItemDecoration,
      this.onItemSelectedListener,
      this.onUserTappedListener});
  final List<CategoryModel> categories;
  final dynamic Function(CategoryModel, int, BuildContext)?
      onItemSelectedListener;
  final int defaultItemIndex;
  final Decoration? focusedItemDecoration;
  final void Function()? onUserTappedListener;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: DirectSelectList<CategoryModel>(
            values: categories,
            itemBuilder: (v) => DirectSelectItem<CategoryModel>(
              scaleFactor: 2,
              itemHeight: 60,
              value: v,
              itemBuilder: (_, v) => Center(
                child: Text(
                  v.name,
                  style: theme.textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onItemSelectedListener: onItemSelectedListener,
            defaultItemIndex: defaultItemIndex,
            focusedItemDecoration: focusedItemDecoration,
            onUserTappedListener: onUserTappedListener,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(
            Icons.unfold_more,
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}
