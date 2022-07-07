import 'package:fiap_mobile_trabalho/ui/movies/movies_screen.dart';
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
    Get.offNamed(MoviesScreen.id);
  }

  void onRegisterButtonPressed() async {
  }
}