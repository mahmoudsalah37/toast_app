import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class ClearItemsCartDialog extends StatefulWidget {
  final Function() onTapYes;

  const ClearItemsCartDialog({
    required this.onTapYes,
  });

  @override
  State<StatefulWidget> createState() => ClearItemsCartDialogState();
}

class ClearItemsCartDialogState extends State<ClearItemsCartDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final res = Responsive(context);
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: ScaleTransition(
              scale: scaleAnimation,
              child: Stack(
                children: [
                  Container(
                    height: res.getHeight(20),
                    padding: EdgeInsets.only(top: 40),
                    margin: EdgeInsets.only(top: 40),
                    decoration: CustomStyle.containerShadowDecoration.copyWith(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Delete all items of cart ?',
                          style: theme.textTheme.headline5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                'No',
                                style: theme.textTheme.headline5,
                              ),
                            ),
                            TextButton(
                              onPressed: () => widget.onTapYes(),
                              child: Text(
                                'Yes',
                                style: theme.textTheme.headline5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset(
                        'assets/images/shopping_cart/delete_basket_icon.svg',
                        width: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
