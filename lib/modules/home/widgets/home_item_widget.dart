import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';

class HomeItemWidget extends StatelessWidget {
  late double itemPadding;
  late double itemWidth;
  late VoidCallback onTap;
  late String img;
  late String name;
  late String rate;
  late String distance;
  late String deliveryTime;

  HomeItemWidget({
    required this.itemPadding,
    required this.itemWidth,
    required this.onTap,
    required this.img,
    required this.name,
    required this.rate,
    required this.distance,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: itemPadding),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: res.getHeight(25),
                      width: res.getWidth(itemWidth),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(img),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 20,
                      child: Icon(Icons.favorite, color: Colors.blue),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 17),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.blue),
                          Text(
                            rate,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      Text(
                        '$distance miles away',
                        style: TextStyle(color: Colors.brown),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: res.getHeight(6),
              right: res.getWidth(5),
              child: Container(
                width: 100,
                height: 50,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFFDD54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Delivery\n$deliveryTime min',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.brown[700], fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
