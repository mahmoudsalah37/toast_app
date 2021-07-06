import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:open_file/open_file.dart';
import 'package:provider/provider.dart';
import '../models/message_model.dart';
import '../provider/driver_offer_provider.dart';
import '../widget/chat_app_bar.dart';
import '../../../packages/laravel_foxico/laravel_foxico.dart';
import 'package:uuid/uuid.dart';

import '../../../src/styles.dart';
import '../../../utils/classes/resposive.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  final echo = Echo({
    'broadcaster': 'socket.io',
    'host': 'https://beta.toast.sa:6001',
    "hostname": "beta.toast.sa",
    "port": "6001",
  });

  @override
  void initState() {
    super.initState();

    echo.channel('UserChannel')?.listen('.UserEvent', (e) {
      print(e);
      final json = e['data'] as Map<String, dynamic>;
      final messageModel = MessageModel.fromJson(json);
      if (messageModel.user != 'Author1') _handleRecieveMessage(messageModel);
      print('dataaa  = ${e['data']}');
    });
    echo.socket?.on('connect', (_) {
      print('connect');
      // _handleRecieveMessage(messageModel);
    });
    echo.socket?.on('disconnect', (_) {
      print('disconnect');
      // _handleRecieveMessage(messageModel);
    });
  }

  void _handleRecieveMessage(MessageModel message) async {
    final textMessage = types.TextMessage(
      author: types.User.fromJson({}),
      id: const Uuid().v4(),
      text: message.user! + ':\n' + message.message!,
      createdAt: (DateTime.now().millisecondsSinceEpoch / 1000).floor(),
      // timestamp: (DateTime.now().millisecondsSinceEpoch / 1000).floor(),
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAtachmentPressed() {
    Responsive res = Responsive(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: res.getHeight(26),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: CustomStyle.containerShadowDecoration,
                  height: res.getHeight(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _handleImageSelection();
                        },
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Photo'),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _handleFileSelection();
                        },
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('File'),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Cancel'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: res.getWidth(20),
                  height: res.getHeight(.5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        name: result.files.single.name,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path ?? ''),
        size: result.files.single.size,
        uri: result.files.single.path ?? '',
      );

      _addMessage(message);
    } else {
      // User canceled the picker
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().getImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);
      final name = result.path.split('/').last;

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    } else {
      // User canceled the picker
    }
  }

  void _handleMessageTap(types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = _messages[index].copyWith(previewData: previewData);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        _messages[index] = updatedMessage;
      });
    });
  }

  void _handleSendPressed(types.PartialText message) async {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );
    var dio = Dio();
    final response = await dio
        .get('https://beta.toast.sa/api/message/Author1/${message.text}');
    if (response.statusCode == 200) {
      print('data = ${response.data}');
      print('status = ${response.statusCode}');
      _addMessage(textMessage);
    } else {
      print('error request');
    }

    // _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    final driverOfferProvider =
        Provider.of<DriverOfferProvider>(context, listen: false)
            .getDriverOfferModel;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ChatAppBar(
              driverName: driverOfferProvider.driverName,
              driverImg: driverOfferProvider.img,
              driverRate: driverOfferProvider.driverRate,
            ),
            //TODO: change onSubmit of keyboard of chat textField
            Expanded(
              child: Chat(
                theme: CustomStyle.chatTheme,
                messages: _messages,
                onAttachmentPressed: _handleAtachmentPressed,
                onMessageTap: _handleMessageTap,
                onPreviewDataFetched: _handlePreviewDataFetched,
                onSendPressed: _handleSendPressed,
                user: _user,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
