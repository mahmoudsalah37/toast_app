import 'package:flutter/material.dart';

import '../widgets/build_app_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(),
    );
  }
}
