import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Image.asset('assets/test/driver.png'),
      ),
    ],
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Colors.yellow),
      onPressed: () => Navigator.of(context).pop(),
    ),
    backwardsCompatibility: true,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Mohamed Said',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star_rate,
              color: Color.fromRGBO(244, 157, 97, 1),
            ),
            Text(
              '4.8 Good',
              style: TextStyle(
                color: Color.fromRGBO(244, 157, 97, 1),
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    ),
    centerTitle: true,
  );
}
