import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:toast_app/modules/shopping_cart/models/cart_model.dart';

class CartProvider extends ChangeNotifier {
  List<CartItemModel> _cartList = [];
  late int quantity;

  int get getCartListLength => _cartList.length;

  UnmodifiableListView<CartItemModel> get getCartList =>
      UnmodifiableListView(_cartList);

  void addItemToCart({
    required int id,
    required int quantity,
    required double price,
    required String description,
    required String itemName,
    required String placeName,
    required List<int> addOnsListOfId,
    required List<int> withOutListOfId,
  }) {
    final cartItem = CartItemModel(
      id: id,
      price: price,
      quantity: quantity,
      description: description,
      itemName: itemName,
      placeName: placeName,
      addOnsListOfIds: addOnsListOfId,
      withOutListOfIds: withOutListOfId,
    );
    _cartList.add(cartItem);
    notifyListeners();
  }

  void updateItem(CartItemModel updateItem) {
    notifyListeners();
  }

  void incrementQuantity(int quantity) {
    quantity++;
    notifyListeners();
  }

  void decrementQuantity(int quantity) {
    if (quantity > 1) {
      quantity--;
    } else {
      print('item Deleted');
    }
    notifyListeners();
  }

  void deleteItem(CartItemModel deleteItem) {
    _cartList.remove(deleteItem);
    notifyListeners();
  }
}
