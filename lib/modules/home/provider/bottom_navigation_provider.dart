import 'package:flutter/material.dart';
import '../widgets/cart_widget.dart';
import '../widgets/notification_widget.dart';
import '../widgets/profile_widget.dart';
import '../widgets/home_widget.dart';

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
        return HomeWidget();
      case 1:
        return CartWidget();
      case 2:
        return NotificationWidget();
      default:
        return ProfileWidget();
    }
  }
}
