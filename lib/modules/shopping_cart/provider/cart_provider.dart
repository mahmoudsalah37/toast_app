import 'package:flutter/material.dart';

import '../models/cart_model.dart';

class CartProvider extends ChangeNotifier {
  List<CartItemModel> _cartList = [];
  late double _subTotalPrice =
      getPriceMultiplyQuantityOfCartList().reduce((a, b) => a + b);
  late double _vat = _subTotalPrice * 14 / 100;
  late double _total = _subTotalPrice + _vat;

  int get getCartListLength => _cartList.length;

  List<CartItemModel> get getCartList => _cartList;

  double get getSubTotal => _subTotalPrice;

  double get getVat => _vat;

  double get getTotal => _total;

  List getPriceMultiplyQuantityOfCartList() {
    var checkedPricesList = [];
    _cartList.forEach(
      (element) => checkedPricesList.add(element.quantity * element.price),
    );
    return checkedPricesList;
  }

  updatePrice() {
    _subTotalPrice =
        getPriceMultiplyQuantityOfCartList().reduce((a, b) => a + b);
    _vat = _subTotalPrice * 14 / 100;
    _total = _subTotalPrice + _vat;
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
