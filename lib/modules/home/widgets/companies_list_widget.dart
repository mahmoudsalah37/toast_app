import 'package:flutter/material.dart';

import '../models/company_model.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';

import 'home_item_widget.dart';

class CompaniesListWidget extends StatelessWidget {
  const CompaniesListWidget({required this.title, required this.items});

  final String title;
  final List<CompanyModel> items;

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        SizedBox(
          height: res.getHeight(37),
          child: ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = items.elementAt(index);
              return CompanyWidget(
                rate: item.rate,
                distance: item.distance,
                name: item.name,
                deliveryTime: item.deliveryTime,
                img: item.img,
                itemWidth: 90,
                onTap: () => Navigator.pushNamed(context, Routes.menuPage),
              );
            },
          ),
        ),
      ],
    );
  }
}
