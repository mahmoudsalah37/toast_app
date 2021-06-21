import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toast_app/src/routes.dart';

import '../widgets/badge_widget.dart';
import '../models/company_model.dart';
import '../models/category_icon_model.dart';
import '../widgets/categories_widget.dart';
import '../widgets/companies_list_widget.dart';
import '../widgets/custom_auto_swiper_widget.dart';
import '../../../utils/classes/resposive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> swiperData = [
      'assets/test/banner_three.png',
      'assets/test/home_food_bg.png',
      'assets/test/banner_three.png',
    ];
    final res = Responsive(context);
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  leading:
                      SvgPicture.asset('assets/images/home/delivery_icon.svg'),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Now', style: TextStyle(color: Colors.yellow)),
                      Text('Current location',
                          style: TextStyle(color: Colors.brown)),
                    ],
                  ),
                  trailing: BadgeWidget(
                    child: IconButton(
                      icon: Icon(Icons.shopping_cart_sharp, color: Colors.blue),
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.cartPage),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                    'assets/images/home/person_profile_icon.svg'),
              )
            ],
          ),
          CustomAutoSwiperWidget(swiperData: swiperData),
          Container(
            height: res.getHeight(28),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0XFFFFF3C2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: CategoriesWidget(
              crossAxisCount: 4,
              items: [
                CategoryIconModel(
                    icon: 'assets/images/home/breakfast_icon.svg',
                    title: 'foods'),
                CategoryIconModel(
                    icon: 'assets/images/home/make_up_icon.svg',
                    title: 'make up'),
                CategoryIconModel(
                    icon: 'assets/images/home/breakfast_icon.svg',
                    title: 'breakfast'),
                CategoryIconModel(
                  icon: 'assets/images/home/pizza_icon.svg',
                  title: 'pizza',
                ),
                CategoryIconModel(
                  icon: 'assets/images/home/grill_icon.svg',
                  title: 'grill',
                ),
                CategoryIconModel(
                    icon: 'assets/images/home/make_up_icon.svg',
                    title: 'vfvfv fvfvf '),
                CategoryIconModel(
                    icon: 'assets/images/home/breakfast_icon.svg',
                    title: 'vvv'),
                CategoryIconModel(icon: '', title: 'foods'),
                CategoryIconModel(icon: '', title: 'makeup'),
                CategoryIconModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryIconModel(icon: '', title: 'vvv'),
                CategoryIconModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryIconModel(icon: '', title: 'vvv'),
                CategoryIconModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryIconModel(icon: '', title: 'vvv'),
                CategoryIconModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryIconModel(icon: '', title: 'vvv'),
                CategoryIconModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryIconModel(icon: '', title: 'hi'),
              ],
            ),
          ),
          CompaniesListWidget(
            title: 'Nearest',
            items: [
              CompanyModel(
                rate: '4.8 Good (500+) - Burgers - Chicken ',
                distance: '1.5',
                name: 'I\'m Hungry',
                deliveryTime: '10-20',
                img: 'assets/test/banner_three.png',
              ),
              CompanyModel(
                rate: '4.8 Good (500+) - Burgers - Chicken ',
                distance: '1.5',
                name: 'I\'m Hungry',
                deliveryTime: '10-20',
                img: 'assets/test/banner_three.png',
              ),
              CompanyModel(
                rate: '4.8 Good (500+) - Burgers - Chicken ',
                distance: '1.5',
                name: 'I\'m Hungry',
                deliveryTime: '10-20',
                img: 'assets/test/banner_three.png',
              )
            ],
          ),
          SizedBox(height: res.getHeight(8))
        ],
      ),
    );
  }
}
