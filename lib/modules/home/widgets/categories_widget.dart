import 'package:flutter/material.dart';
import '../widgets/see_all_widget.dart';
import '../../models/category_model.dart';

import 'category_item_widget.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({this.items = const [], required this.crossAxisCount})
      : assert(crossAxisCount > 0);
  final List<CategoryModel> items;
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
        isShowAll ? widget.items.length : (widget.crossAxisCount * 2);

    return Scrollbar(
      controller: scrollController,
      child: GridView.builder(
          controller: scrollController,
          itemCount: itemCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.crossAxisCount,
          ),
          itemBuilder: (_, index) {
            final item = widget.items.elementAt(index);
            if (!isShowAll && itemCount - 1 == index)
              return SeeAllWidget(
                onTap: () {
                  setState(() {
                    isShowAll = !isShowAll;
                  });
                },
              );
            else
              return CategoryItemWidget(
                onTap: () {},
                title: item.title,
                img: item.icon,
              );
          }),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
