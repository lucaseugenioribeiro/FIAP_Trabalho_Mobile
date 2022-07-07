import 'package:get/get.dart';

class LoginPresenter extends GetxController {
 
  LoginPresenter();

  var userEmail = '';
  var userPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onLoginButtonPressed() async {
    
  }

  void onRegisterButtonPressed() async {
  }
}