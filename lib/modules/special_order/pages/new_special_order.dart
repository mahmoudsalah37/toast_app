import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class NewSpecialOrderPage extends StatelessWidget {
  const NewSpecialOrderPage();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Pick Your Stores Locations',
          style: theme.textTheme.headline3,
        ),
        centerTitle: true,
        foregroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
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
                  SizedBox(height: 8),
                  DotStepper(
                    activeStep: 0,
                    direction: Axis.vertical,
                    dotCount: 4,
                    dotRadius: 6,
                    spacing: 50,
                    lineConnectorsEnabled: true,
                    lineConnectorDecoration: LineConnectorDecoration(
                      strokeWidth: 1,
                    ),
                    onDotTapped: (i) {},
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 4),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                          TextField(),
                          TextField(),
                          TextField(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
