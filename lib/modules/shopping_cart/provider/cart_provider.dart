import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_model.dart';

class CartProvider extends ChangeNotifier {
  CartProvider();
  List<CartItemModel> _cartList = [];
  double _totalPriceWithouVat = 0,
      _vat = 0,
      _totalPrice = 0,
      _totaladdonsPrice = 0;

  int get getCartListLength => _cartList.length;

  List<CartItemModel> get getCartList => _cartList;

  double get gettotalPiceWithoutVat => _totalPriceWithouVat;

  double get getVat => _vat;

  double get getTotalPrice => _totalPrice;

  double calculateTotalPriceWithoutVat() {
    List<double> checkedPricesList = [];
    _cartList.forEach(
      (element) => checkedPricesList.add(element.quantity * element.price),
    );
    return _cartList.map((e) => e.quantity * e.price).reduce((a, b) => a + b);
  }

  // double calculateTotalAddonsPrice() {
  //   return _cartList.map((e) => e.addOns.re).reduce((a, b) => a + b);
  // }

  void updatePrice() {
    _totaladdonsPrice = _totalPriceWithouVat = calculateTotalPriceWithoutVat();
    _vat = _totalPriceWithouVat * 14 / 100;
    _totalPrice = _totalPriceWithouVat + _vat;
    notifyListeners();
  }

  void addItemToCart(CartItemModel cartItemModel) {
    final cartItem = cartItemModel;
    _cartList.add(cartItem);
    updatePrice();
    notifyListeners();
  }

  void incrementQuantity(int index) {
    CartItemModel product = _cartList.elementAt(index);
    final quantity = _cartList.elementAt(index).quantity;

    _cartList.replaceRange(
      index,
      index + 1,
      [product.copyWith(quantity: quantity + 1)],
    );
    updatePrice();
    notifyListeners();
  }

  void decrementQuantity(int index) {
    CartItemModel product = _cartList.elementAt(index);
    final quantity = _cartList.elementAt(index).quantity;

    _cartList.replaceRange(
      index,
      index + 1,
      [product.copyWith(quantity: quantity - 1)],
    );
    updatePrice();
    notifyListeners();
  }

  void deleteItem(CartItemModel deleteItem) {
    try {
      _cartList.remove(deleteItem);
      updatePrice();
    } catch (e) {
      print('deleteException $e');
    }
    notifyListeners();
  }
}
