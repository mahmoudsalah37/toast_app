import 'package:flutter/material.dart';
import '../../../src/colors.dart';
import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Responsive res = Responsive(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: res.getWidth(100),
              margin: EdgeInsets.only(
                  top: res.getHeight(6), left: 10, right: 10, bottom: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: CustomStyle.containerShadowDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios,
                        color: CustomColors.yellowDeepColor),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ahmed Nasser',
                        style: theme.textTheme.headline5,
                      ),
                      Text(
                        '★ 4.8',
                        style: theme.textTheme.headline3!
                            .copyWith(color: CustomColors.accentColor),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Container(
                    width: res.getWidth(16),
                    height: res.getHeight(6),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/test/banner_three.png'),
                        ),
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            Text('chat page', style: theme.textTheme.headline1),
          ],
        ),
      ),
    );
  }
}
