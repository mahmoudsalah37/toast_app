import 'package:flutter/material.dart';

import '../screens/cart_screen.dart';
import '../screens/home_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/profile_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  bool _specialOrderBtnVisibility = false;

  int get getCurrentIndex => _currentIndex;

  bool get getSpecialOrderBtnVisibility => _specialOrderBtnVisibility;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void toggleSpecialOrderBtnVisibility(bool v) {
    _specialOrderBtnVisibility = v;
    notifyListeners();
  }

  Widget onTabChange(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return CartScreen();
      case 2:
        return NotificationScreen();
      default:
        return ProfileScreen();
    }
  }
}
