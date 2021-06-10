import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/modules/home/pages/menu_page.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';
import 'package:toast_app/src/theme.dart';

class MenuItemModalBottomSheet extends StatefulWidget {
  @override
  _MenuItemModalBottomSheetState createState() =>
      _MenuItemModalBottomSheetState();
}

class _MenuItemModalBottomSheetState extends State<MenuItemModalBottomSheet> {
  bool addOnsValue = false;
  Map<String, bool> addOnDataList = {
    'Tomato': false,
    'Lettuce': false,
    'Cheese': false,
    'Sauce': false,
  };

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return Container(
      child: Column(
        children: [
          Container(
            height: res.getHeight(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/test/banner_three.png'),
              ),
            ),
          ),
          SizedBox(height: res.getHeight(1)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Twin Burger Meal', style: textTheme.headline6),
                    Text('SAR 20', style: textTheme.bodyText1),
                  ],
                ),
                Text('Best Twin Burger in the world',
                    style: textTheme.subtitle1),
                Divider(color: CustomColors.accentColor),
                SizedBox(height: res.getHeight(.5)),
                Text('Add Ons:', style: textTheme.headline5),
                SizedBox(
                  height: res.getHeight(14),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: addOnDataList.keys.map((String key) {
                      return AddAndWithOutCheckBoxWidget(
                        title: key,
                        value: addOnDataList[key] as bool,
                        onChanged: (newValue) {
                          setState(() {
                            addOnDataList[key] = newValue;
                            if (addOnDataList[key] = newValue)
                              print('$key ${addOnDataList[key]}');
                          });
                        },
                        hasPrice: false,
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: res.getHeight(1)),
                Text('With out:', style: textTheme.headline5),
                SizedBox(
                  height: res.getHeight(14),
                  child: ListView.builder(
                    itemCount: 10,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    itemBuilder: (context, index) =>
                        AddAndWithOutCheckBoxWidget(
                            title: 'Cheese',
                            value: true,
                            onChanged: (value) {},
                            hasPrice: false,
                            price: ''),
                  ),
                ),
                SizedBox(height: res.getHeight(.8)),
                TextField(
                  textInputAction: TextInputAction.done,
                  decoration: CustomStyle.homeSearchInputDecoration.copyWith(
                    hintText: 'Notes',
                  ),
                  maxLines: 4,
                ),
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          CustomColors.yellowDeepColor),
                      textStyle: MaterialStateProperty.all(textTheme.headline6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Done',
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
