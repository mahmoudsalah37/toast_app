import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/models/create_order/create_cart_model.dart';
import 'package:toast_app/modules/shopping_cart/pages/drivers_offer_page.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/locations_provider.dart';
import 'package:toast_app/modules/shopping_cart/services/create_order_service.dart';
import '../widget/cart_app_bar_widget.dart';
import '../widget/cart_yellow_button.dart';
import '../widget/location_single_selection_item_widget.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';

class OrderLocationDetailsPage extends StatefulWidget {
  @override
  _OrderLocationDetailsPageState createState() =>
      _OrderLocationDetailsPageState();
}

class _OrderLocationDetailsPageState extends State<OrderLocationDetailsPage> {
  bool loadingVisibility = false;

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: res.getHeight(4)),
              CustomCartAppBar(indicatorIndex: 2, title: 'Location Details'),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Location', style: theme.textTheme.bodyText1),
                    SizedBox(
                      width: res.getWidth(16),
                      height: res.getHeight(4),
                      child: OutlinedButton(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          Routes.addLocationPage,
                        ),
                        child:
                            Icon(Icons.add, color: CustomColors.blueLightColor),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: CustomColors.blueLightColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              LocationSingleSelectionItemWidget(),
              SizedBox(height: res.getHeight(9)),
            ],
          ),
          Positioned(
            top: res.getHeight(92),
            child: SizedBox(
              width: res.getWidth(100),
              child: Consumer<LocationsProvider>(
                  builder: (_, locationsProvider, __) {
                return CustomCartYellowButton(
                  title: 'Next',
                  onPressed: () async {
                    // setState(() => loadingVisibility = true);
                    // final createOrderService = CreateOrderService();
                    final cartProvider =
                        Provider.of<CartProvider>(context, listen: false);
                    final createOrderModel = CreateOrderModel(
                      companyId: 3,
                      userId: 1,
                      selectedLocationId:
                          locationsProvider.getSelectedLocation!.id as int,
                      vat: cartProvider.getVat,
                      subTotal: cartProvider.getSubtotalPice,
                      cartItemsList: cartProvider.getProducts,
                      orderType: 'normal',
                    ).toJsonCustom(1);
                    print('createOrderModel>>> $createOrderModel');
                     // await createOrderService
                     //    .createOrder(createOrderModel);
                    // if (createOrderResponse.data != null) {
                    //   Navigator.pushNamed(context, Routes.driversOfferPage);
                    // } else {
                    //   print('something went wrong');
                    // }
                    // setState(() => loadingVisibility = false);
                  },
                );
              }),
            ),
          ),
          Visibility(visible: loadingVisibility, child: LoadingIndicator())
        ],
      ),
    );
  }
}
