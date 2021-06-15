import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/home/models/categories_model.dart';
import 'package:toast_app/modules/home/models/product_model.dart';
import 'package:toast_app/modules/home/provider/categories_provider.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/enums/notifier_state.dart';
import '../widgets/drop_down_menu_widget.dart';
import '../widgets/home_item_widget.dart';
import '../widgets/menu_item_bottom_sheet.dart';
import '../widgets/menu_item_widget.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<CategoriesProvider>(context, listen: false).getCategories();
  }

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
              child: Consumer<CategoriesProvider>(
                builder: (_, notifier, __) {
                  if (notifier.state == NotifierState.initial) {
                    return Text('Press the button');
                  } else if (notifier.state == NotifierState.loading) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return notifier.categories!.fold(
                      (failure) => Text(failure.toString()),
                      (data) {
                        final products = fetchAll(data);
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final product = products.elementAt(index);
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
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                    ),
                                    child: MenuItemModalBottomSheet(),
                                  ),
                                ),
                              ),
                              img: 'assets/test/banner_three.png',
                              title: product.title,
                              description: product.metaModel?.content ?? '',
                              price: '${product.priceModel?.price ?? 0.0}',
                            );
                          },
                        );
                      },
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<ProductModel> fetchAll(CategoriesModel categoriesModel) {
  List<ProductModel> products = [];
  for (final v in categoriesModel.categories!) {
    products.addAll(v.products ?? []);
  }
  return products;
}
