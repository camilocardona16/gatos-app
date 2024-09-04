import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gatos_app/core/token.dart';
import 'package:gatos_app/routes/app.routes.dart';
import 'package:gatos_app/core/enviorments.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController({required this.context});
  late BuildContext context;

  @override
  void onReady() async {
    Future.delayed(const Duration(seconds: 2), () async {
      await Token.save(Enviorments.token);
      Get.offAndToNamed(AppRoutes.home);
    });
    super.onReady();
  }
}
