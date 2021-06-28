import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:group_button/group_button.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/home/provider/select_product_provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';

import '../../../src/colors.dart';
import '../../../src/theme.dart';
import '../../../utils/classes/resposive.dart';
import '../../../widgets/multi_selecteed_dialog_field_widget.dart';
import '../models/addon/addon_model.dart';
import '../models/product/product_model.dart';
import '../models/without/without_model.dart';

class MenuItemModalBottomSheet extends StatefulWidget {
  MenuItemModalBottomSheet({required this.product});
  final ProductModel product;
  @override
  _MenuItemModalBottomSheetState createState() =>
      _MenuItemModalBottomSheetState();
}

class _MenuItemModalBottomSheetState extends State<MenuItemModalBottomSheet> {
  late SelectProductProvider selectProductProvider;
  @override
  void initState() {
    super.initState();
    selectProductProvider =
        Provider.of<SelectProductProvider>(context, listen: false)
          ..setLastSelectedProduct = widget.product;
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    TextTheme textTheme = CustomsThemes.defaultThemeData.textTheme;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.product.title}',
                      style: textTheme.headline6,
                    ),
                    Text('${widget.product.priceModel.price} SAR',
                        style: textTheme.bodyText1),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        '${widget.product.metaModel.content}',
                        style: textTheme.subtitle1,
                        // maxFontSize: 12,
                        minFontSize: 8,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Consumer<SelectProductProvider>(
                        builder: (context, selectProductProvider, w) {
                      return Text(
                          '+ ${selectProductProvider.getLastSelectedProduct.totalAdds} SAR',
                          style: textTheme.bodyText1
                              ?.copyWith(fontSize: 10, color: Colors.black));
                    }),
                  ],
                ),
                Divider(color: CustomColors.accentColor),
                Container(
                  height: res.getHeight(40),
                  child: ListView(
                    children: [
                      SizedBox(height: res.getHeight(.5)),
                      Text('Add Ons:', style: textTheme.headline5),
                      MultiSelectedDilaogFieldWidget<AddonModel>(
                        items: widget.product.addons
                            .map((e) => MultiSelectItem(
                                e, '${e.title} - ${e.price.price} SAR'))
                            .toList(growable: false),
                        title: Text(
                          'Add Ons:',
                          style: textTheme.headline5,
                        ),
                        onConfirm: (items) {
                          selectProductProvider.setAddons = items
                              .cast<AddonModel>()
                              .map((e) => e.copyWith())
                              .toList();
                        },
                      ),
                      SizedBox(height: 4),
                      Text('Without:', style: textTheme.headline5),
                      MultiSelectedDilaogFieldWidget<WithoutModel>(
                        items: widget.product.withouts
                            .map((e) => MultiSelectItem(e, '${e.title}'))
                            .toList(growable: false),
                        title: Text(
                          'With out:',
                          style: textTheme.headline5,
                        ),
                        onConfirm: (items) {
                          selectProductProvider.setWithOuts = items
                              .cast<WithoutModel>()
                              .map((e) => e.copyWith())
                              .toList();
                        },
                      ),
                      SizedBox(height: 4),
                      Text('Varaieties:', style: textTheme.headline5),
                      GroupButton(
                        isRadio: true,
                        spacing: 10,
                        selectedButton: -1,
                        selectedColor: Colors.blue,
                        onSelected: (index, isSelected) {
                          final varaiety = widget.product.varaieties
                              .elementAt(index)
                              .copyWith();
                          selectProductProvider.setVaraiety = varaiety;
                        },
                        buttons: widget.product.varaieties
                            .map((e) => '${e.variety} - ${e.price} SAR')
                            .toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              if (selectProductProvider
                  .getLastSelectedProduct.varaieties.isNotEmpty) {
                Provider.of<CartProvider>(context, listen: false).addProduct =
                    selectProductProvider.getLastSelectedProduct;
                Navigator.pop(context);
              } else {
                Fluttertoast.showToast(
                    msg: "Please Select Varaiety",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              }
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(CustomColors.yellowDeepColor),
              textStyle: MaterialStateProperty.all(textTheme.headline6),
            ),
            child: Text(
              'Add',
            ),
          )
        ],
      ),
    );
  }
}
