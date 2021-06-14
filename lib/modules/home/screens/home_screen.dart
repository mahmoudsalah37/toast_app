import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../src/colors.dart';
import '../models/company_model.dart';
import '../models/category_model.dart';
import '../widgets/categories_widget.dart';
import '../widgets/companies_list_widget.dart';
import '../widgets/custom_auto_swiper_widget.dart';
import '../../../classes/resposive.dart';

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
                  trailing: Icon(
                    Icons.search,
                    color: CustomColors.yellowDeepColor,
                    size: 30,
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
                CategoryModel(
                    icon: 'assets/images/home/breakfast_icon.svg',
                    title: 'foods'),
                CategoryModel(
                    icon: 'assets/images/home/make_up_icon.svg',
                    title: 'make up'),
                CategoryModel(
                    icon: 'assets/images/home/breakfast_icon.svg',
                    title: 'breakfast'),
                CategoryModel(
                  icon: 'assets/images/home/pizza_icon.svg',
                  title: 'pizza',
                ),
                CategoryModel(
                  icon: 'assets/images/home/grill_icon.svg',
                  title: 'grill',
                ),
                CategoryModel(
                    icon: 'assets/images/home/make_up_icon.svg',
                    title: 'vfvfv fvfvf '),
                CategoryModel(
                    icon: 'assets/images/home/breakfast_icon.svg',
                    title: 'vvv'),
                CategoryModel(icon: '', title: 'foods'),
                CategoryModel(icon: '', title: 'makeup'),
                CategoryModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryModel(icon: '', title: 'vvv'),
                CategoryModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryModel(icon: '', title: 'vvv'),
                CategoryModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryModel(icon: '', title: 'vvv'),
                CategoryModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryModel(icon: '', title: 'vvv'),
                CategoryModel(icon: '', title: 'vfvfv fvfvf '),
                CategoryModel(icon: '', title: 'hi'),
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
