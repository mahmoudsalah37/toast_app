import 'package:flutter/cupertino.dart';
import 'package:toast_app/modules/auth/model/login/login_model.dart';
import 'package:toast_app/modules/auth/service/LoginService.dart';
import 'package:toast_app/src/routes.dart';
import 'package:toast_app/utils/classes/helper_methods.dart';

class LoginProvider extends ChangeNotifier {
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

  Future<void> login({
    required LoginModel loginModel,
    required GlobalKey<FormState> formKey,
    required BuildContext context,
  }) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      setLoadingIndicator = true;
      final loginResponse= await LoginService.login(loginModel: loginModel);
      if (loginResponse.statusCode == 200) {
        // print('token = ${loginResponse.data['token']}');
        Navigator.pushNamed(context, Routes.homePage);
        HelperMethods.showToast(msg: 'Welcome');
        setLoadingIndicator = false;
      } else {
        setLoadingIndicator = false;
        HelperMethods.showToast(msg: 'Email or password incorrect');
      }
    } else {
      HelperMethods.showToast(msg: 'Complete Fields');
    }
  }
}
