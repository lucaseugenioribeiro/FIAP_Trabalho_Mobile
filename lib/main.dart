import 'package:fiap_mobile_trabalho/main/factories/pages/home/home_screen_factory.dart';
import 'package:fiap_mobile_trabalho/main/factories/pages/login/login_screen_factory.dart';
import 'package:fiap_mobile_trabalho/main/factories/pages/register/register_screen_factory.dart';
import 'package:fiap_mobile_trabalho/ui/home/home_screen.dart';
import 'package:fiap_mobile_trabalho/ui/login/login_screen.dart';
import 'package:fiap_mobile_trabalho/ui/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDcLUPnxDZSbj-J_HtNdoiF8SFkfWSjzS0",
      authDomain: "fiap-trabalho-mobile.firebaseapp.com",
      projectId: "fiap-trabalho-mobile",
      storageBucket: "fiap-trabalho-mobile.appspot.com",
      messagingSenderId: "1049307388737",
      appId: "1:1049307388737:web:036f0bd48c881729519fc0"
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Trabalho',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEFEF),
        primarySwatch: Colors.indigo,
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: makeLoginScreen),
        GetPage(name: RegisterScreen.id, page: makeRegisterScreen),
        GetPage(name: HomeScreen.id, page: makeHomeScreen),
      ],
    );
  }
}