import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/routes.dart';
import '../widgets/search_text_field_widget.dart';
import '../widgets/location_company_card_widget.dart';
import '../widgets/app_bar._widget.dart';

class NewSpecialOrderPickStorePage extends StatelessWidget {
  const NewSpecialOrderPickStorePage();

  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar:
          buildAppBarSpecialOrderWidget(context, 'Pick Your Stores Locations'),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SearchTFW(
                    text: 'Wa',
                    onChange: (v) {},
                  ),
                ],
              ),
            ),
            Container(
              height: res.getHeight(55),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, index) => LocationComapnyCardWidget(
                  title: 'Waves Fashion',
                  details: '4.8 Good (500+) - Fashion - Footware - Men - Women',
                  distance: '1.5 miles away',
                  image: '',
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(Routes.newSpecialOrderPickStoreLocationPage);
                  },
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
