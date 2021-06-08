import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/modules/home/widgets/home_item_widget.dart';
import 'package:toast_app/src/styles.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late String dropdownValue = 'All';
  String newDropDownValue = 'Gender';

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: res.getHeight(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: SizedBox(
                width: res.getWidth(80),
                child: TextField(
                    decoration: CustomStyle().kHomeSearchInputDecoration),
              ),
              trailing: Stack(
                children: [
                  Icon(Icons.shopping_basket,
                      color: Colors.blue, size: res.getWidth(10)),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text('2'),
                      maxRadius: 8,
                    ),
                  )
                ],
              ),
            ),
            HomeItemWidget(
              rate: '4.8 Good (500+) - Burgers - Chicken ',
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
                color: Colors.yellow[700],
              ),
              child: DropdownButton<String>(
                value: dropdownValue,
                hint: Text('All', style: TextStyle(color: Colors.brown)),
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
                    child: Text(
                      value,
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadowColor: Colors.black45,
              elevation: 5,
              borderOnForeground: true,
              margin: EdgeInsets.all(12),
              child: Container(height: 100),
            ),
          ],
        ),
      ),
    );
  }
}
