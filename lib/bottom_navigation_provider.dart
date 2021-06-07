import 'package:flutter/material.dart';

import 'bottom_navigation_container.dart';
import 'home_screen.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  bool _specialOrderBtnVisibility = false;

  int get getCurrentIndex => _currentIndex;

  bool get getSpecialOrderBtnVisibility => _specialOrderBtnVisibility;

  changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  toggleSpecialOrderBtnVisibility() {
    _specialOrderBtnVisibility = !_specialOrderBtnVisibility;
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
