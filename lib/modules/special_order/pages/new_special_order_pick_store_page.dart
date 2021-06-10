import 'package:flutter/material.dart';
import 'package:toast_app/classes/resposive.dart';
import '../widgets/search_text_field_widget.dart';
import '../widgets/text_button_widget.dart';
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
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 8,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                      ),
                      onPressed: () {},
                      child: Text(
                        'OTHER',
                        style: TextStyle(
                          color: Color.fromRGBO(89, 46, 30, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
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
                ),
              ),
            ),
            Spacer(),
            TextButtonWidget(
              text: 'Next',
            ),
            SizedBox(height: 21),
          ],
        ),
      ),
    );
  }
}
