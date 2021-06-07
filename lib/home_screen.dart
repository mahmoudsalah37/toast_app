import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'category_item.dart';
import 'custom_auto_swiper.dart';
import 'home_item.dart';

InputDecoration kHomeSearchDecoration = InputDecoration(
  hintText: 'Search...',
  fillColor: Color(0xFFFFF3C2),
  filled: true,
  hintStyle: TextStyle(fontSize: 12),
  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: SvgPicture.asset('assets/images/delivery_icon.svg'),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Now', style: TextStyle(color: Colors.yellow)),
                Text('Current location', style: TextStyle(color: Colors.brown)),
              ],
            ),
            trailing: SvgPicture.asset('assets/images/person_profile_icon.svg'),
          ),
          ListTile(
            leading: SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: TextField(decoration: kHomeSearchDecoration)),
            trailing: SvgPicture.asset('assets/images/filter_icon.svg'),
          ),
          CustomAutoSwiper(),
          Container(
            height: MediaQuery.of(context).size.height * .28,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Color(0XFFFFF3C2),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryItem(
                      title: 'Burgers',
                      img: 'assets/images/home/burgers_icon.svg',
                    ),
                    CategoryItem(
                      title: 'Break Fast',
                      img: 'assets/images/home/breakfast_icon.svg',
                    ),
                    CategoryItem(
                      title: 'Grill',
                      img: 'assets/images/home/grill_icon.svg',
                    ),
                    CategoryItem(
                      title: 'Pizza',
                      img: 'assets/images/home/pizza_icon.svg',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CategoryItem(
                      title: 'Fast Food',
                      img: 'assets/images/home/fast_food_icon.svg',
                    ),
                    CategoryItem(
                      title: 'Make-Up',
                      img: 'assets/images/home/make_up_icon.svg',
                    ),
                    CategoryItem(
                      title: 'Pharmacy',
                      img: 'assets/images/home/pharmacy_icon.svg',
                    ),
                    CategoryItem(
                      title: 'See All',
                      img: 'assets/images/home/see_all_icon.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Nearest',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .33,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HomeItem();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Top Rated',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .33,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HomeItem();
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .08)
        ],
      ),
    );
  }
}

