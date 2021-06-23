import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_navigation_provider.dart';
import '../widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
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
