import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/custom_outline_button.dart';
import '../widgets/register_app_bar.dart';
import '../../../src/colors.dart';
import '../../../src/routes.dart';
import '../../../utils/classes/resposive.dart';
import '../../../widgets/custom_stepper_dots.dart';

class RegisterStepThreePage extends StatelessWidget {
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
          Hero(
            tag: 'done_page_hero',
            child: SvgPicture.asset(
              'assets/images/bottom_navigation/toast_icon.svg',
              height: res.getHeight(10),
            ),
          ),
          Center(child: CustomStepperDots(indicatorIndex: 3)),
          SizedBox(height: res.getHeight(4)),
          Text(
            'Personalize',
            style: theme.textTheme.headline1!
                .copyWith(color: CustomColors.blueColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: res.getHeight(3)),
          Text(
            'Pick all your favourite categorie to be add it into your \nhome page, so that you can easily reach it.',
            style: theme.textTheme.subtitle2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: res.getHeight(3)),
          Text(
            'What is your favourtie categories?',
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
                    child: Text(e.title.toString(),
                        style: theme.textTheme.subtitle2),
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

class RegisterThreeCategoriesModel {
  final String? title;

  RegisterThreeCategoriesModel({this.title});
}

List<RegisterThreeCategoriesModel> categoriesModel = [
  RegisterThreeCategoriesModel(title: 'Burger'),
  RegisterThreeCategoriesModel(title: 'Meat'),
  RegisterThreeCategoriesModel(title: 'Electronics'),
  RegisterThreeCategoriesModel(title: 'Mexican'),
  RegisterThreeCategoriesModel(title: 'Fried'),
  RegisterThreeCategoriesModel(title: 'Burger   3'),
  RegisterThreeCategoriesModel(title: 'Gifts & Flowers'),
  RegisterThreeCategoriesModel(title: 'Grilled'),
  RegisterThreeCategoriesModel(title: 'Pasta'),
  RegisterThreeCategoriesModel(title: 'Men'),
  RegisterThreeCategoriesModel(title: 'Clothes'),
  RegisterThreeCategoriesModel(title: 'Fast Food'),
  RegisterThreeCategoriesModel(title: 'Sandwich'),
];
