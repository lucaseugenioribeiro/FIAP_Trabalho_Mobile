import 'package:fiap_mobile_trabalho/main/factories/pages/home/home_presenter_factory.dart';
import 'package:fiap_mobile_trabalho/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

Widget makeHomeScreen() => HomeScreen(presenter: makeHomePresenter());