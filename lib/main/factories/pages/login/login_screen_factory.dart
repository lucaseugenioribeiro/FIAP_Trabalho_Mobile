import 'package:fiap_mobile_trabalho/main/factories/pages/login/login_presenter_factory.dart';
import 'package:fiap_mobile_trabalho/ui/login/login_screen.dart';
import 'package:flutter/material.dart';

Widget makeLoginScreen() => LoginScreen(presenter: makeLoginPresenter());