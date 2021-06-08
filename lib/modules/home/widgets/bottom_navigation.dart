import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/classes/resposive.dart';
import '../provider/bottom_navigation_provider.dart';

class CurvedBottomNavigation extends StatefulWidget {
  @override
  _CurvedBottomNavigationState createState() => _CurvedBottomNavigationState();
}

class _CurvedBottomNavigationState extends State<CurvedBottomNavigation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(milliseconds: 500),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0, 1),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    ),
  );

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationProvider>(context);
    Size size = MediaQuery.of(context).size;
    Responsive res = Responsive(context);
    return Stack(
      children: [
        Positioned(
          left: 4,
          right: 4,
          top: res.getHeight(91),
          child: Container(
            width: size.width,
            height: size.height * .12,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, size.height),
                  painter: PaintNavigationDrawer(),
                ),
                GestureDetector(
                  onTap: () {
                    provider.toggleSpecialOrderBtnVisibility();
                    _controller.forward();
                    if (_controller.isCompleted) _controller.value = 0;
                    print('value = ${_controller.value}');
                  },
                  child: Center(
                    heightFactor: .6,
                    child: SvgPicture.asset(
                        'assets/images/bottom_navigation/toast_icon.svg'),
                  ),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          provider.changeIndex(0);
                        },
                        icon: SvgPicture.asset(
                          'assets/images/bottom_navigation/home_icon.svg',
                          color: provider.getCurrentIndex == 0
                              ? Colors.brown
                              : Color(0xffFFE1CF),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          provider.changeIndex(1);
                        },
                        icon: SvgPicture.asset(
                          'assets/images/bottom_navigation/social_media.svg',
                          color: provider.getCurrentIndex == 1
                              ? Colors.brown
                              : Color(0xffFFE1CF),
                        ),
                      ),
                      SizedBox(width: size.width * .2),
                      IconButton(
                        onPressed: () {
                          provider.changeIndex(2);
                        },
                        icon: SvgPicture.asset(
                          'assets/images/bottom_navigation/toast_coin.svg',
                          color: provider.getCurrentIndex == 2
                              ? Colors.brown
                              : Color(0xffFFE1CF),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          provider.changeIndex(3);
                        },
                        icon: SvgPicture.asset(
                          'assets/images/bottom_navigation/more.svg',
                          color: provider.getCurrentIndex == 3
                              ? Colors.brown
                              : Color(0xffFFE1CF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: size.height * .14),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: _offsetAnimation,
              child: Visibility(
                visible: provider.getSpecialOrderBtnVisibility,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xffF49D61)),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Special Order',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class PaintNavigationDrawer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5662080, size.height * 0.5938671);
    path_0.cubicTo(
        size.width * 0.5767680,
        size.height * 0.6003620,
        size.width * 0.5855093,
        size.height * 0.5522962,
        size.width * 0.5834213,
        size.height * 0.4989709);
    path_0.cubicTo(
        size.width * 0.5795200,
        size.height * 0.3995646,
        size.width * 0.5758533,
        size.height * 0.2560051,
        size.width * 0.5822293,
        size.height * 0.1650418);
    path_0.lineTo(size.width * 0.9680000, size.height * 0.1650418);
    path_0.cubicTo(size.width * 0.9856720, size.height * 0.1650418, size.width,
        size.height * 0.2330494, size.width, size.height * 0.3169405);
    path_0.lineTo(size.width, size.height * 0.7979532);
    path_0.lineTo(0, size.height * 0.7979532);
    path_0.lineTo(0, size.height * 0.3169405);
    path_0.cubicTo(
        0,
        size.height * 0.2330494,
        size.width * 0.01432688,
        size.height * 0.1650418,
        size.width * 0.03200000,
        size.height * 0.1650418);
    path_0.lineTo(size.width * 0.4308240, size.height * 0.1650418);
    path_0.cubicTo(
        size.width * 0.4371867,
        size.height * 0.2558962,
        size.width * 0.4335067,
        size.height * 0.3997392,
        size.width * 0.4295973,
        size.height * 0.4989709);
    path_0.cubicTo(
        size.width * 0.4275067,
        size.height * 0.5522962,
        size.width * 0.4362480,
        size.height * 0.6000532,
        size.width * 0.4468107,
        size.height * 0.5938671);
    path_0.cubicTo(
        size.width * 0.4634827,
        size.height * 0.5836595,
        size.width * 0.4867653,
        size.height * 0.5718443,
        size.width * 0.5065093,
        size.height * 0.5705456);
    path_0.cubicTo(
        size.width * 0.5262107,
        size.height * 0.5718443,
        size.width * 0.5494773,
        size.height * 0.5836595,
        size.width * 0.5662080,
        size.height * 0.5938671);
    path_0.close();
    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Colors.white.withOpacity(1.0);

    canvas.drawShadow(path_0.shift(Offset(0, -10)), Colors.black, 4, true);
    canvas.drawPath(path_0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
