import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/modules/home/widgets/home_item_widget.dart';
import 'package:toast_app/modules/home/widgets/menu_item_bottom_sheet.dart';
import 'package:toast_app/modules/home/widgets/menu_item_widget.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/src/theme.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late String dropdownValue = 'All';

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: res.getHeight(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
              leading: SizedBox(
                width: res.getWidth(80),
                child: TextField(
                    decoration: CustomStyle.homeSearchInputDecoration),
              ),
              trailing: GestureDetector(
                onTap: () => Navigator.pushNamed(context, Routes.cartPage),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: SvgPicture.asset(
                        'assets/images/home/cart_icon.svg',
                        color: CustomColors.blueColor,
                        width: res.getWidth(10),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: CustomColors.blueColor,
                        child: Text('8', style: TextStyle(color: Colors.white)),
                        maxRadius: 10,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: res.getHeight(2)),
            CompanyWidget(
              rate: '4.8 Good (500+) - Burgers - Chicken - Dessert',
              distance: '1.5',
              name: 'I\'m Hungry',
              deliveryTime: '10-20',
              img: 'assets/test/banner_three.png',
              itemPadding: 0,
              itemWidth: 100,
              onTap: () {},
            ),
            Container(
              height: res.getHeight(6),
              width: res.getWidth(30),
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: CustomColors.yellowDeepColor,
              ),
              child: DropdownButton<String>(
                dropdownColor: CustomColors.yellowDeepColor,
                value: dropdownValue,
                hint: Text('All'),
                underline: SizedBox(),
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.brown),
                iconSize: res.getWidth(8),
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: [
                  'All',
                  'Burger',
                  'Dessert',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: textTheme.headline6),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 8,
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

class AddAndWithOutCheckBoxWidget extends StatelessWidget {
  final Function onChanged;
  final String title;
  final String? price;
  final bool value;
  final bool hasPrice;

  const AddAndWithOutCheckBoxWidget({
    required this.title,
    required this.value,
    required this.onChanged,
    required this.hasPrice,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: res.getHeight(3.8),
            child: Checkbox(
              value: value,
              // checkColor: CustomColors.primaryColor,
              activeColor: CustomColors.primaryColor,
              onChanged: (newValue) {
                onChanged(newValue);
              },
            ),
          ),
          Expanded(child: Text(title, style: textTheme.headline2)),
          Visibility(
            visible: hasPrice ? true : false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                hasPrice ? '+$price.00' : '',
                style: textTheme.headline3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
