import 'package:fiap_mobile_trabalho/domain/usecases/auth/register_with_email.dart';
import 'package:fiap_mobile_trabalho/ui/home/home_screen.dart';
import 'package:get/get.dart';

class RegisterPresenter extends GetxController {
 
  RegisterPresenter({
    required this.registerWithEmail,
  });

  final errorMessage = RxString('');

  RegisterWithEmail registerWithEmail;

  var userEmail = '';
  var userPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onRegisterButtonPressed() async {
    var user = await registerWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      errorMessage.value = 'Erro, tente novamentse';
    } else {
      Get.offNamed(HomeScreen.id);
    }
  }
}