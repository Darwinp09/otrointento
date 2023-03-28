import 'package:flutter/material.dart';
import 'package:componentes/src/pages/login_page.dart';
//import 'package:componentes/src/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ); //MaterialApp
  }
}
