import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/home/widgets/badge_widget.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';
import '../../../widgets/direct_selected_item_list.dart';
import '../provider/categories_provider.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';
import '../../../utils/enums/notifier_state.dart';
import '../widgets/home_item_widget.dart';
import '../widgets/menu_item_bottom_sheet.dart';
import '../widgets/menu_item_widget.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late CategoriesProvider catgoriesProvider;
  int defaultItemIndex = 0;
  @override
  void initState() {
    super.initState();
    catgoriesProvider = Provider.of<CategoriesProvider>(context, listen: false)
      ..getCategories();
  }

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return DirectSelectContainer(
      child: Scaffold(
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
            BadgeWidget(
              child: IconButton(
                icon: Icon(Icons.shopping_cart_sharp, color: Colors.blue),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.orderDetailsCartPage);
                  var provider =
                  Provider.of<CartProvider>(context, listen: false);
                  provider.addItemToCart(
                    id: 1,
                    quantity: 1,
                    price: 10,
                    description: 'description 1',
                    itemName: 'itemName 1',
                    placeName: 'placeName 1',
                    addOnsListOfId: [1, 2],
                    withOutListOfId: [3, 4],
                  );
                  provider.addItemToCart(
                    id: 2,
                    quantity: 2,
                    price: 20,
                    description: 'description 2',
                    itemName: 'itemName 2',
                    placeName: 'placeName 2',
                    addOnsListOfId: [2, 4],
                    withOutListOfId: [6, 8],
                  );
                },
              ),
            ),
          ],
        ),
        body: Column(
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
                Container(
                  width: res.getWidth(35),
                  margin: const EdgeInsets.only(left: 8),
                  child: Consumer<CategoriesProvider>(
                    builder: (_, notifier, __) {
                      if (notifier.state == NotifierState.loading) {
                        return Center(child: CircularProgressIndicator());
                      } else {
                        return DirectSelectListWidget(
                          defaultItemIndex: defaultItemIndex,
                          focusedItemDecoration: BoxDecoration(
                            border: BorderDirectional(
                              bottom:
                                  BorderSide(width: 1, color: Colors.black12),
                              top: BorderSide(width: 1, color: Colors.black12),
                            ),
                          ),
                          categories: notifier.categories!.fold(
                            (failure) {
                              return [];
                            },
                            (data) {
                              return data.categories ?? [];
                            },
                          ),
                          onItemSelectedListener: (v, i, _) {
                            defaultItemIndex = i;
                            catgoriesProvider.setCategory(v);
                          },
                        );
                      }
                    },
                  ),
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
                  if (notifier.state == NotifierState.loading) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return notifier.categories!.fold(
                      (failure) => Text(failure.toString()),
                      (data) {
                        final products = notifier.getCategory?.products ?? [];
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
                                    child: MenuItemModalBottomSheet(
                                        product: product),
                                  ),
                                ),
                              ),
                              img: 'assets/test/banner_three.png',
                              title: product.title,
                              description: product.metaModel.content,
                              price: '${product.priceModel.price} SAR',
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
