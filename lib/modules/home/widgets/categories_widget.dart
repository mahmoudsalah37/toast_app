import 'package:flutter/material.dart';

import '../models/category_icon_model.dart';
import 'category_item_widget.dart';
import 'see_icon_widget.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({this.items = const [], required this.crossAxisCount})
      : assert(crossAxisCount > 0);
  final List<CategoryIconModel> items;
  final int crossAxisCount;
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final ScrollController scrollController = ScrollController();
  bool isShowAll = false;
  @override
  Widget build(BuildContext context) {
    final int itemCount =
        isShowAll ? widget.items.length + 1 : (widget.crossAxisCount * 2);

    return Scrollbar(
      controller: scrollController,
      child: GridView.builder(
          controller: scrollController,
          itemCount: itemCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.crossAxisCount,
          ),
          itemBuilder: (_, index) {
            if (itemCount - 1 == index)
              return SeeIconWidget(
                isShowAll: isShowAll,
                onTap: () {
                  setState(() {
                    isShowAll = !isShowAll;
                  });
                },
              );
            else {
              final item = widget.items.elementAt(index);

              return CategoryItemWidget(
                onTap: () {},
                title: item.title,
                img: item.icon,
              );
            }
          }),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
