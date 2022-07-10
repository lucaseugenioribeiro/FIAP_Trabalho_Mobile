import 'package:fiap_mobile_trabalho/presentation/login_presenter.dart';
import 'package:fiap_mobile_trabalho/presentation/register_presenter.dart';
import 'package:fiap_mobile_trabalho/ui/components/rounded_button.dart';
import 'package:fiap_mobile_trabalho/ui/components/rounded_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = '/register';

  const RegisterScreen({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  final RegisterPresenter presenter;

  void showError(String errorMessage) async {
    Get.snackbar(errorMessage, '');
  }
  
  @override
  Widget build(BuildContext context) {
    presenter.onInit();
    
    presenter.errorMessage.listen((errorMessage) {
      if (errorMessage.isNotEmpty) showError(errorMessage);
    });

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedTextField(
                hint: 'Email',
                onTextChanged: presenter.onUserEmailUpdate,
              ),
              const SizedBox(height: 16),
              RoundedTextField(
                hint: 'Senha',
                onTextChanged: presenter.onPasswordUpdate,
              ),
              const SizedBox(height: 32.0),
              RoundedButton(
                text: 'Registrar',
                onPressed: presenter.onRegisterButtonPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}