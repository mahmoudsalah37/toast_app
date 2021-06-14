import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:toast_app/classes/resposive.dart';
import 'package:toast_app/src/colors.dart';
import 'package:toast_app/src/styles.dart';

class CustomEstimatedDistanceStepper extends StatelessWidget {
  final int numberOfPlaces;
  final String estimatedDistance;
  final String firstPlaceTitle;
  final String secondPlaceTitle;
  final String thirdPlaceTitle;
  final String firstPlaceDistance;

  final String secondPlaceDistance;

  const CustomEstimatedDistanceStepper({
    required this.estimatedDistance,
    required this.numberOfPlaces,
    required this.firstPlaceTitle,
    required this.secondPlaceTitle,
    required this.thirdPlaceTitle,
    required this.firstPlaceDistance,
    required this.secondPlaceDistance,
  });

  List<int> numberStepperList() {
    switch (numberOfPlaces) {
      case 1:
        return [1];
      case 2:
        return [1, 2];
      default:
        return [1, 2, 3];
    }
  }

  MainAxisAlignment alignmentOfPLacesTitle() {
    switch (numberOfPlaces) {
      case 1:
        return MainAxisAlignment.center;
      case 2:
        return MainAxisAlignment.center;
      default:
        return MainAxisAlignment.spaceEvenly;
    }
  }

  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Positioned(
      bottom: res.getHeight(3),
      right: 8,
      left: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: res.getWidth(100),
            height: res.getHeight(25),
            padding: EdgeInsets.all(8),
            decoration: CustomStyle.containerShadowDecoration,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Estimated Distance :',
                        style: theme.textTheme.headline5),
                    Text('$estimatedDistance KMs',
                        style: theme.textTheme.caption),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: res.getHeight(19),
                          child: Row(
                            children: [
                              NumberStepper(
                                direction: Axis.vertical,
                                numbers: numberStepperList(),
                                stepPadding: 4,
                                stepRadius: 10,
                                activeStepBorderWidth: 2,
                                activeStepBorderColor: Colors.white,
                                activeStepColor: CustomColors.accentColor,
                                scrollingDisabled: true,
                                numberStyle: TextStyle(color: Colors.black),
                                lineColor: CustomColors.accentColor,
                                stepColor: CustomColors.accentColor,
                                lineLength: 20,
                                activeStep: 0,
                                enableStepTapping: false,
                                steppingEnabled: false,
                                enableNextPreviousButtons: false,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: alignmentOfPLacesTitle(),
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: numberOfPlaces == 2 ? 30 : 0,
                                    ),
                                    child: Text(firstPlaceTitle,
                                        style: theme.textTheme.headline3),
                                  ),
                                  Visibility(
                                    visible: numberOfPlaces == 2 ||
                                        numberOfPlaces == 3
                                        ? true
                                        : false,
                                    child: Text(secondPlaceTitle,
                                        style: theme.textTheme.headline3),
                                  ),
                                  Visibility(
                                    visible: numberOfPlaces == 3 ? true : false,
                                    child: Text(thirdPlaceTitle,
                                        style: theme.textTheme.headline3),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                    ///Stepper distance
                    Stack(
                      children: [
                        Container(
                          height: res.getHeight(19),
                          child: NumberStepper(
                            direction: Axis.vertical,
                            numbers: numberStepperList(),
                            stepPadding: 4,
                            stepRadius: 8,
                            activeStepBorderWidth: 2,
                            activeStepBorderColor: Colors.white,
                            activeStepColor: CustomColors.primaryColor,
                            scrollingDisabled: true,
                            numberStyle:
                            TextStyle(color: CustomColors.primaryColor),
                            lineColor: CustomColors.primaryColor,
                            stepColor: CustomColors.primaryColor,
                            lineLength: 30,
                            activeStep: 0,
                            enableStepTapping: false,
                            steppingEnabled: false,
                            enableNextPreviousButtons: false,
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                                height: numberOfPlaces == 2
                                    ? res.getHeight(9)
                                    : res.getHeight(6)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                '$firstPlaceDistance Kms',
                                style: theme.textTheme.headline3!
                                    .copyWith(backgroundColor: Colors.white),
                              ),
                            ),
                            SizedBox(height: res.getHeight(5)),
                            Visibility(
                              visible: numberOfPlaces != 3 ? false : true,
                              child: Text(
                                '$secondPlaceDistance Kms',
                                style: theme.textTheme.headline3!
                                    .copyWith(backgroundColor: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: res.getWidth(100),
            padding: EdgeInsets.all(8),
            decoration: CustomStyle.containerShadowDecoration,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total', style: theme.textTheme.overline),
                Text('SAR 250', style: theme.textTheme.overline),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
