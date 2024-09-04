import 'package:flutter/cupertino.dart';
import 'package:gatos_app/app/home/presentation/pages/listado_page.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  // bottmOptions
  int selectedIndexBottom = 0;
  List<Widget> bottomOptions = [
    const ListadoPage(),
  ];
  void onItemTappedBottom(int index) {
    selectedIndexBottom = index;
    update();
  }
}
