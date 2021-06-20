import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../utils/classes/resposive.dart';
import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../src/theme.dart';

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
  final addOnsList = {
    'Tomato',
    'Lettuce',
    'Cheese',
    'Sauce',
  };
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: res.getHeight(30),
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
          SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
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
                Container(
                  height: res.getHeight(40),
                  child: ListView(
                    children: [
                      SizedBox(height: res.getHeight(.5)),
                      Text('Add Ons:', style: textTheme.headline5),
                      MultiSelectedDilaogFieldWidget<String>(
                        items: addOnsList
                            .map((e) => MultiSelectItem(e, e))
                            .toList(growable: false),
                        title: Text(
                          'Add Ons:',
                          style: textTheme.headline5,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('Without:', style: textTheme.headline5),
                      MultiSelectedDilaogFieldWidget<String>(
                        items: addOnsList
                            .map((e) => MultiSelectItem(e, e))
                            .toList(growable: false),
                        title: Text(
                          'With out:',
                          style: textTheme.headline5,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('Varaieties:', style: textTheme.headline5),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        padding: EdgeInsets.symmetric(vertical: 8),
                        itemBuilder: (context, index) =>
                            AddAndWithOutCheckBoxWidget(
                          title: 'Cheese',
                          value: true,
                          onChanged: (value) {},
                          hasPrice: false,
                          price: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextField(
            textInputAction: TextInputAction.done,
            decoration: CustomStyle.homeSearchInputDecoration.copyWith(
              hintText: 'Notes',
            ),
            maxLines: 4,
          ),
          SizedBox(height: 4),
          TextButton(
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
              backgroundColor:
                  MaterialStateProperty.all(CustomColors.yellowDeepColor),
              textStyle: MaterialStateProperty.all(textTheme.headline6),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Done',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MultiSelectedDilaogFieldWidget<T> extends StatefulWidget {
  const MultiSelectedDilaogFieldWidget({required this.items, this.title});
  final List<MultiSelectItem<T>> items;
  final Widget? title;
  @override
  _MultiSelectedDilaogFieldWidgetState createState() =>
      _MultiSelectedDilaogFieldWidgetState();
}

class _MultiSelectedDilaogFieldWidgetState<T>
    extends State<MultiSelectedDilaogFieldWidget> {
  List<T> initalValue = [];
  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField<T>(
      title: widget.title,
      onConfirm: (val) {
        setState(() {
          initalValue = val;
        });
      },
      items: widget.items as List<MultiSelectItem<T>>,
      initialValue: initalValue,
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
