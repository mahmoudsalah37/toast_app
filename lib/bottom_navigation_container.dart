import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation.dart';
import 'bottom_navigation_provider.dart';
import 'home_screen.dart';

class BottomNavigationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          provider.onTabChange(provider.getCurrentIndex),
          CurvedBottomNavigation(),
        ],
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: Center(
        child: Text(
          'cart_screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[900],
      body: Center(
        child: Text(
          'notification_screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: Text(
          'profile_screen',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
