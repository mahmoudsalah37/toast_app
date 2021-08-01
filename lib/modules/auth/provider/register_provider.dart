import 'package:flutter/cupertino.dart';
import 'package:toast_app/modules/auth/model/register/register_model.dart';
import 'package:toast_app/modules/auth/service/RegisterService.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/classes/helper_methods.dart';

class RegisterProvider extends ChangeNotifier {
  bool loadingIndicator = false;
  bool passwordVisibility = true;

  bool get getLoadingIndicator => loadingIndicator;

  bool get getPasswordVisibility => passwordVisibility;

  set setLoadingIndicator(bool loading) {
    this.loadingIndicator = loading;
    notifyListeners();
  }

  void changePasswordVisibility() {
    passwordVisibility = !passwordVisibility;
    notifyListeners();
  }

  Future<void> register({
    required RegisterModel registerModel,
    required GlobalKey<FormState> formKey,
    required BuildContext context,
  }) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      setLoadingIndicator = true;
      final registerResponse =
          await RegisterService.register(registerModel: registerModel);
      if (registerResponse.statusCode == 200) {
        print('token = ${registerResponse.data['token']}');
        Navigator.pushNamed(context, Routes.registerVerificationCodePage);
        HelperMethods.showToast(msg: 'Register Done');
        setLoadingIndicator = false;
      } else {
        HelperMethods.showToast(msg: 'Problem with register');
      }
    } else {
      HelperMethods.showToast(msg: 'Complete Fields');
    }
  }
}
