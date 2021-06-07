import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/test/home_food_bg.png'),
                  Positioned(
                    right: 10,
                    top: 10,
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
                      'I\'m Hungry',
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue),
                        Text(
                          '4.8 Good (500+) - Burgers - Chicken ',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Text(
                      '1.5 miles away',
                      style: TextStyle(color: Colors.brown),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .12,
            right: 30,
            child: Container(
              width: 100,
              height: 50,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffFFDD54),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Delivery\n10-20 min',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.brown[700], fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
