import 'package:flutter/material.dart';
import 'package:gatos_app/app/splash/splash_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'GASTOS APP',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // getPages: AppPages.pages,
    );
  }
}
