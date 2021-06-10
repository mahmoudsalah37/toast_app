import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:im_stepper/stepper.dart';
import '../widgets/text_button_widget.dart';
import '../widgets/app_bar._widget.dart';
import '../widgets/enter_location_tfw.dart';

class NewSpecialOrderPage extends StatelessWidget {
  const NewSpecialOrderPage();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar:
          buildAppBarSpecialOrderWidget(context, 'Pick Your Stores Locations'),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 8,
                    color: Colors.grey[300]!,
                  )
                ],
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 20),
                      DotStepper(
                        activeStep: 0,
                        direction: Axis.vertical,
                        dotCount: 4,
                        dotRadius: 6,
                        spacing: 50,
                        lineConnectorsEnabled: true,
                        tappingEnabled: false,
                        lineConnectorDecoration: LineConnectorDecoration(
                          strokeWidth: 1,
                        ),
                        onDotTapped: (i) {},
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          EnterLocationTFW(
                            hitText: 'Store Location 1...',
                            textEditingController:
                                TextEditingController(text: ''),
                          ),
                          EnterLocationTFW(
                            hitText: 'Store Location 2...',
                            textEditingController:
                                TextEditingController(text: ''),
                          ),
                          EnterLocationTFW(
                            hitText: 'Store Location 3...',
                            textEditingController:
                                TextEditingController(text: ''),
                          ),
                          EnterLocationTFW(
                            hitText: 'Your Location...',
                            textEditingController:
                                TextEditingController(text: ''),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/special_order/map.svg'),
                  SizedBox(height: 12),
                  Text(
                    'Please keep pick up points to 10 KMs or less',
                    style: TextStyle(
                      color: Color.fromRGBO(89, 46, 30, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'To serve you better, please keep the distance between the stores 10 KMs or less, otherwise, your delivery fees and time might be higher than usual.',
                    style: TextStyle(
                      color: Color.fromRGBO(154, 126, 116, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            TextButtonWidget(
              text: 'Done',
            ),
            SizedBox(height: 21),
          ],
        ),
      ),
    );
  }
}
