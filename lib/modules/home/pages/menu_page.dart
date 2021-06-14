import 'package:flutter/material.dart';
import 'package:toast_app/src/routes.dart';

import '../../../classes/resposive.dart';
import '../widgets/drop_down_menu_widget.dart';
import '../widgets/home_item_widget.dart';
import '../widgets/menu_item_bottom_sheet.dart';
import '../widgets/menu_item_widget.dart';
import '../../../../src/colors.dart';
import '../../../../src/theme.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(''),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_sharp, color: Colors.blue),
            onPressed: () => Navigator.pushNamed(context, Routes.cartPage),
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompanyWidget(
              rate: '4.8 Good (500+) - Burgers - Chicken - Dessert',
              distance: '1.5',
              name: 'I\'m Hungry',
              deliveryTime: '10-20',
              img: 'assets/test/banner_three.png',
              itemWidth: 100,
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropDownMenuWidget(
                  items: [
                    'All',
                    'Burger',
                    'Dessert',
                  ],
                  onChanged: (v) {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 28,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return MenuItemWidget(
                    onTap: () => showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      isScrollControlled: true,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: MenuItemModalBottomSheet(),
                        ),
                      ),
                    ),
                    img: 'assets/test/banner_three.png',
                    title: 'Cheese Single Burger',
                    description: 'Fresh slice beef burger, lattuce,',
                    price: '20.0',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
