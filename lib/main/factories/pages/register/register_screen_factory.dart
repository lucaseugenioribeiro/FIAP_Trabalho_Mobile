import 'package:fiap_mobile_trabalho/main/factories/pages/register/register_presenter_factory.dart';
import 'package:fiap_mobile_trabalho/ui/register/register_screen.dart';
import 'package:flutter/material.dart';

Widget makeRegisterScreen() => RegisterScreen(presenter: makeRegisterPresenter());