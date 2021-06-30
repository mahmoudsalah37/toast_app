import 'package:flutter/cupertino.dart';

import '../models/addon/addon_model.dart';
import '../models/product/product_model.dart';
import '../models/varaiety/varaiety_model.dart';
import '../models/without/without_model.dart';

class SelectProductProvider extends ChangeNotifier {
  ProductModel _lastSelectedProduct = ProductModel();
  set setLastSelectedProduct(ProductModel product) {
    _lastSelectedProduct = product.copyWith(
      addons: [],
      withouts: [],
      varaieties: [],
    );
  }

  set setAddons(List<AddonModel> addons) {
    _lastSelectedProduct.addons.clear();
    _lastSelectedProduct.addons.addAll(addons);
    setTotaladdsLastSelectedProduct();
    notifyListeners();
  }

  set setWithOuts(List<WithoutModel> withouts) {
    _lastSelectedProduct.withouts.clear();
    _lastSelectedProduct.withouts.addAll(withouts);
    setTotaladdsLastSelectedProduct();
    notifyListeners();
  }

  set setVaraiety(VaraietyModel varaiety) {
    _lastSelectedProduct.varaieties.clear();
    _lastSelectedProduct.varaieties.add(varaiety);
    setTotaladdsLastSelectedProduct();
    notifyListeners();
  }

  ProductModel get getLastSelectedProduct => _lastSelectedProduct;

  double _getTotalAddonsLastSelectedProduct() {
    return _lastSelectedProduct.addons.isNotEmpty
        ? _lastSelectedProduct.addons
            .map((e) => e.price.price)
            .reduce((e1, e2) => e1 + e2)
        : 0;
  }

  double _getvaraietyLastSelectedProduct() {
    return _lastSelectedProduct.varaieties.isNotEmpty
        ? _lastSelectedProduct.varaieties.first.price
        : 0;
  }

  void setTotaladdsLastSelectedProduct() {
    final totalAddons = _getTotalAddonsLastSelectedProduct();
    final varaietyPrice = _getvaraietyLastSelectedProduct();
    final totalAdds = totalAddons + varaietyPrice;
    final priceProduct =
        _lastSelectedProduct.priceModel.price * _lastSelectedProduct.quantity;
    final totalPrice = priceProduct + totalAdds;
    _lastSelectedProduct = _lastSelectedProduct.copyWith(
        totalAdds: totalAdds, totalPrice: totalPrice);
  }
}
