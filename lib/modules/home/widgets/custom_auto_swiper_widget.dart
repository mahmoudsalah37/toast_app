import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:toast_app/utils/classes/resposive.dart';

class CustomAutoSwiperWidget extends StatelessWidget {
  final List<String> swiperData;

  CustomAutoSwiperWidget({required this.swiperData});

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return SizedBox(
      height: res.getHeight(25),
      child: Swiper(
        // onTap: (value) {},
        // viewportFraction: 0.8,
        // scale: 0.85,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(swiperData[index]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
        autoplay: true,
        itemCount: swiperData.length,
        pagination: SwiperPagination(
          margin: EdgeInsets.all(0.0),
          builder: SwiperCustomPagination(
            builder: (context, config) {
              return ConstrainedBox(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Align(
                        alignment: Alignment.center,
                        child: new DotSwiperPaginationBuilder(
                                color: Colors.yellowAccent.withOpacity(.8),
                                activeColor: Colors.yellow,
                                size: 8,
                                space: 2,
                                activeSize: 12)
                            .build(context, config),
                      ),
                    )
                  ],
                ),
                constraints: new BoxConstraints.expand(height: 50.0),
              );
            },
          ),
        ),
      ),
    );
  }
}
