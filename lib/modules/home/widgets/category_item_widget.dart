import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemWidget extends StatefulWidget {
  final String img;
  final String title;
  final void Function() onTap;
  CategoryItemWidget(
      {required this.title, required this.img, required this.onTap});

  @override
  _CategoryItemWidgetState createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onTap();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            widget.img,
            height: 30,
            width: 30,
            color: changeSelectedColor(isSelected),
            placeholderBuilder: (_) => SvgPicture.asset(
              'assets/images/home/sand-clock.svg',
              height: 30,
              width: 30,
            ),
          ),
          SizedBox(height: 4),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: changeSelectedColor(isSelected),
            ),
          )
        ],
      ),
    );
  }

  Color? changeSelectedColor(bool isSelected) {
    return isSelected ? Colors.yellow[700] : Color.fromRGBO(206, 98, 33, 1);
  }
}
