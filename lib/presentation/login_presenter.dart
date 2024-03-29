import 'package:fiap_mobile_trabalho/domain/usecases/auth/login_with_email.dart';
import 'package:fiap_mobile_trabalho/domain/usecases/auth/register_with_email.dart';
import 'package:fiap_mobile_trabalho/ui/home/home_screen.dart';
import 'package:fiap_mobile_trabalho/ui/register/register_screen.dart';
import 'package:get/get.dart';

class LoginPresenter extends GetxController {
 
  LoginPresenter({
    required this.loginWithEmail,
    required this.registerWithEmail,
  });

  final errorMessage = RxString('');

  LoginWithEmail loginWithEmail;
  RegisterWithEmail registerWithEmail;

  var userEmail = '';
  var userPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onLoginButtonPressed() async {
    var user = await loginWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      errorMessage.value = 'Credenciais inválidas';
    } else {
      Get.offNamed(HomeScreen.id);
    }
  }

  void onRegisterButtonPressed() async {
    Get.offNamed(RegisterScreen.id);
  }
}