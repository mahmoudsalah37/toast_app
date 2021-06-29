import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:toast_app/modules/shopping_cart/models/create_order/create_cart_model.dart';
import 'package:toast_app/modules/shopping_cart/provider/cart_provider.dart';
import 'package:toast_app/modules/shopping_cart/provider/locations_provider.dart';
import 'package:toast_app/modules/shopping_cart/services/create_order_service.dart';
import 'package:toast_app/utils/classes/helper_methods.dart';
import 'package:toast_app/widgets/loading_indicator.dart';
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
                    final createOrderService = CreateOrderService();
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
                    );
                    final createOrderData = toJsonCustom(createOrderModel);
                    final createOrderResponse =
                        await createOrderService.createOrder(createOrderData);
                    if (createOrderData.isNotEmpty) {
                      Navigator.pushNamed(context, Routes.driversOfferPage);
                      HelperMethods.showToast(msg: 'Order Created');
                      print(
                          'order_channel>>>>>>${createOrderResponse.data['data']['order_channel']}');
                    } else {
                      print('something went wrong');
                    }
                    setState(() => loadingVisibility = false);
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

  Map<String, dynamic> toJsonCustom(CreateOrderModel createOrderModel) {
    final data = new Map<String, dynamic>();
    data['vendor_id'] = 3;
    data['user_id'] = 1;
    data['user_location_id'] = createOrderModel.selectedLocationId;
    data['sub_total'] = createOrderModel.subTotal;
    data['discount'] = createOrderModel.discount;
    data['vat'] = createOrderModel.vat;
    data['type'] = createOrderModel.orderType;
    data['cart'] = createOrderModel.cartItemsList
        .map(
          (e) => {
            'item_id': e.id,
            'quantity': e.quantity,
            'addons': e.addons.map((e) => e.id).toList(growable: false),
            'withouts': e.withouts.map((e) => e.id).toList(growable: false),
            'variety_id': e.varaieties.first.termId,
          },
        )
        .toList(growable: false);
    return data;
  }
}
