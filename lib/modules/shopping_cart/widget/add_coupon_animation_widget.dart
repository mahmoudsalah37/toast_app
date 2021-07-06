import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../src/colors.dart';
import '../../../utils/classes/resposive.dart';
import 'add_coupon_custom_painter.dart';

class AddCouponAnimationWidget extends StatefulWidget {
  final Widget textFieldCoupon;
  final Function onTapEnterCoupon;

  const AddCouponAnimationWidget({
    required this.textFieldCoupon,
    required this.onTapEnterCoupon,
  });

  @override
  _AddCouponAnimationWidgetState createState() =>
      _AddCouponAnimationWidgetState();
}

class _AddCouponAnimationWidgetState extends State<AddCouponAnimationWidget>
    with TickerProviderStateMixin {
  bool couponBtnVisibility = false;

  late final AnimationController _controller = AnimationController(
    duration: Duration(milliseconds: 500),
    vsync: this,
  );

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(1, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    ),
  );

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              couponBtnVisibility = true;
              _controller.forward();
            });
          },
          onHorizontalDragUpdate: (e) {
            setState(() {
              if (e.delta.dx < 0) {
                _controller.forward();
                couponBtnVisibility = true;
              }
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: res.getWidth(16)),
              Shimmer.fromColors(
                highlightColor: Colors.lightBlueAccent,
                direction: ShimmerDirection.rtl,
                baseColor: CustomColors.blueColor,
                period: Duration(milliseconds: 800),
                child: Text(
                  '<<< Slide to add coupon',
                  style: TextStyle(
                    fontSize: 16,
                    color: CustomColors.blueLightColor,
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: Size(res.getWidth(30), res.getHeight(8)),
                    painter: AddCouponCustomPainter(color: Colors.white),
                  ),
                  Text('Coupon', style: theme.textTheme.overline)
                ],
              ),
            ],
          ),
        ),
        SlideTransition(
          position: _offsetAnimation,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: res.getWidth(2)),
              SizedBox(
                width: res.getWidth(60),
                child: widget.textFieldCoupon,
              ),
              GestureDetector(
                onTap: () {
                  widget.onTapEnterCoupon();
                  if (_controller.isCompleted) _controller.reverse();
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: Size(res.getWidth(30), res.getHeight(8)),
                      painter:
                          AddCouponCustomPainter(color: CustomColors.blueColor),
                    ),
                    Text(
                      'Enter',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
