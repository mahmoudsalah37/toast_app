import 'package:flutter/material.dart';

import '../models/cart_model.dart';

class CartProvider extends ChangeNotifier {
  List<CartItemModel> _cartList = [];
  late int quantity;

  int get getCartListLength => _cartList.length;

  List<CartItemModel> get getCartList => _cartList;

  void addItemToCart(
    CartItemModel cartItemModel,
  ) {
    final cartItem = cartItemModel;
    _cartList.add(cartItem);
    notifyListeners();
  }

  void updateItem(CartItemModel updateItem) {
    notifyListeners();
  }

  void incrementQuantity(int index) {
    CartItemModel product = _cartList.elementAt(index);
    final quantity = _cartList.elementAt(index).quantity;

    _cartList.replaceRange(
        index, index + 1, [product.copyWith(quantity: quantity + 1)]);
    notifyListeners();
  }

  void decrementQuantity(int index) {
    CartItemModel product = _cartList.elementAt(index);
    final quantity = _cartList.elementAt(index).quantity;

    _cartList.replaceRange(
        index, index + 1, [product.copyWith(quantity: quantity - 1)]);

    notifyListeners();
  }

  void deleteItem(CartItemModel deleteItem) {
    _cartList.remove(deleteItem);
    notifyListeners();
  }
}
