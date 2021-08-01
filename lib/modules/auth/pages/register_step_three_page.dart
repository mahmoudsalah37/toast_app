import 'package:flutter/material.dart';
import 'package:toast_app/modules/auth/widgets/registration_header_widget.dart';

import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';
import '../widgets/custom_outline_button.dart';
import '../widgets/register_app_bar.dart';

class RegisterSelectFavoriteCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(res.getHeight(6)),
        child: RegisterAppBar(
          haveSkipButton: true,
          onTapSkip: () =>
              Navigator.pushNamed(context, Routes.registerStepDonePage),
        ),
      ),
      body: Column(
        children: [
          RegistrationHeaderWidget(
            title: 'Personalize',
            subtitle:
                'Pick all your favourite categories to be add it into your \nhome page, so that you can easily reach it.',
            stepNumber: 3,
            labelVisibility: false,
          ),
          SizedBox(height: res.getHeight(3)),
          Text(
            'What is your favourite categories?',
            style: theme.textTheme.headline2!.copyWith(
              color: CustomColors.blueColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: res.getHeight(3)),
          Wrap(
            children: categoriesModel
                .map(
                  (e) => Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.blueColor,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(e, style: theme.textTheme.subtitle2),
                  ),
                )
                .toList()
                .cast(),
          ),
          SizedBox(height: res.getHeight(4)),
          RegisterOutlineButton(
            onPressed: () => Navigator.pushNamed(
              context,
              Routes.registerStepDonePage,
            ),
            title: 'Next',
          ),
        ],
      ),
    );
  }
}

List<String> categoriesModel = [
  'Burger',
  'Meat',
  'Electronics',
  'Mexican',
  'Fried',
  'Burger   3',
  'Gifts & Flowers',
  'Grilled',
  'Pasta',
  'Men',
  'Clothes',
  'Fast Food',
  'Sandwich',
];
