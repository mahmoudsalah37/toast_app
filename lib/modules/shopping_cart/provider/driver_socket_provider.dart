import 'package:flutter/material.dart';
import '../models/socket_model/data/data_model.dart';
import '../models/socket_model/socket_model.dart';

class DriverSocketProvider extends ChangeNotifier {
  SocketModel _socketModel = SocketModel();

  set setSocket(SocketModel socket) {
    _socketModel = socket;
    notifyListeners();
  }

  DataModel get getSocketData => _socketModel.data;
}
