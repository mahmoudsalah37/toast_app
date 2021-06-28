import 'package:flutter/material.dart';
import 'package:toast_app/modules/home/models/product/product_model.dart';
import '../models/cart/cart_model.dart';

class CartProvider extends ChangeNotifier {
  CartProvider();
  CartModel _cart = CartModel(products: []);

  set addProduct(ProductModel product) {
    _cart.products.add(product);
    _setTotalPrice();
    notifyListeners();
  }

  int get getProductLength => _cart.products.length;

  List<ProductModel> get getProducts => _cart.products;

  double get getSubtotalPice => _cart.subTotal;

  double get getVat => _cart.vat;

  double get getTotalPrice => _cart.total;

  double getTotalWithoutVat() {
    return _cart.products.isNotEmpty
        ? _cart.products.map((e) => e.totalPrice).reduce((e1, e2) => e1 + e2)
        : 0;
  }

  void _setTotalPrice() {
    final subTotal = getTotalWithoutVat();
    final vat = subTotal * 14 / 100;
    final total = subTotal + vat;
    _cart = _cart.copyWith(subTotal: subTotal, vat: vat, total: total);
    notifyListeners();
  }

  void incrementQuantity(int index) {
    final product = _cart.products.elementAt(index);
    final quantity = product.quantity;
    final updateQuantity = quantity + 1;
    final total =
        (product.totalAdds + product.priceModel.price) * updateQuantity;
    _cart.products.replaceRange(
      index,
      index + 1,
      [product.copyWith(quantity: updateQuantity, totalPrice: total)],
    );
    _setTotalPrice();
    notifyListeners();
  }

  void decrementQuantity(int index) {
    final product = _cart.products.elementAt(index);
    final quantity = product.quantity;
    final updateQuantity = quantity - 1;
    final total =
        (product.totalAdds + product.priceModel.price) * updateQuantity;
    _cart.products.replaceRange(
      index,
      index + 1,
      [product.copyWith(quantity: updateQuantity, totalPrice: total)],
    );
    _setTotalPrice();
    notifyListeners();
  }

  void deleteItem(ProductModel product) {
    try {
      _cart.products.remove(product);
      _setTotalPrice();
    } catch (e) {
      print('deleteException $e');
    }
    notifyListeners();
  }
}
