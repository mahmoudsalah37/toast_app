import 'package:flutter/cupertino.dart';

import '../models/fake_driver_offer_data.dart';

class DriverOfferProvider extends ChangeNotifier {
  late FakeDataDriverOffer _driverOfferModel;

  FakeDataDriverOffer get getDriverOfferModel => _driverOfferModel;

  set setDriverOfferModel(FakeDataDriverOffer driverOfferModel) {
    this._driverOfferModel = driverOfferModel;
    notifyListeners();
  }
}
