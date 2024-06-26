import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_mcq_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
