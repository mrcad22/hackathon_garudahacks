import 'package:flutter/material.dart';
import 'package:gelartikar/login_screen/_login.dart';
import '_constant.dart';
import 'login_screen/_landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hackatons GarudaApps',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: kBgColor,
        ),
        primaryColor: kBgColor,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}