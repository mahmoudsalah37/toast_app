import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toast_app/utils/classes/resposive.dart';

void clearCartItemsDialog(
    {required BuildContext context, required Function() onTapYes}) {
  Responsive res = Responsive(context);
  ThemeData theme = Theme.of(context);
  showDialog(
    barrierColor: Colors.black.withOpacity(0.5),
    context: context,
    builder: (con) => Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        height: res.getHeight(20),
        width: res.getWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    'Delete all items of cart ?',
                    minFontSize: 1,
                    maxLines: 1,
                    style: theme.textTheme.headline6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('No'),
                      ),
                      TextButton(
                          onPressed: () {
                            onTapYes();
                          },
                          child: Text('Yes')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
