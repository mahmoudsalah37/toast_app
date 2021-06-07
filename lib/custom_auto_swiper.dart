import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class CustomAutoSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Swiper(
        onTap: (value) {},
        // viewportFraction: 0.8,
        // scale: 0.85,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/test/home_food_bg.png'),
                    fit: BoxFit.fill),
              ),
            ),
          );
        },
        autoplay: true,
        itemCount: 3,
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
