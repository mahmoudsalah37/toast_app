import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/src/colors.dart';

class LocationComapnyCardWidget extends StatelessWidget {
  final String title, details, distance, image;

  const LocationComapnyCardWidget(
      {required this.title,
      required this.details,
      required this.distance,
      required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 8,
            spreadRadius: 1,
            color: Colors.grey[100]!,
          )
        ],
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.primaryColor,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 18,
                    ),
                    SizedBox(width: 2),
                    Expanded(
                      child: AutoSizeText(
                        details,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.blue,
                        ),
                        maxLines: 2,
                        // softWrap: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                AutoSizeText(
                  distance,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w300,
                    color: CustomColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(
              'assets/test/image2.png',
              height: 80,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}
