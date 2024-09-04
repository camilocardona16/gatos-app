import 'package:flutter/material.dart';
import 'package:gatos_app/app/home/di.dart';
import 'package:gatos_app/app/splash/splash_page.dart';
import 'package:gatos_app/routes/app.pages.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    homeDI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CATBREEDS',
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      getPages: AppPages.pages,
      theme: ThemeData(
          fontFamily: "Intel",
          primarySwatch: Colors.brown,
          primaryColor: Colors.red,
          secondaryHeaderColor: Colors.lightGreen,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          )),
    );
  }
}
