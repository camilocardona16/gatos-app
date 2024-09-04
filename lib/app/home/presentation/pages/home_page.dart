import 'package:flutter/material.dart';
import 'package:gatos_app/app/home/presentation/get/home_page_controller.dart';
import 'package:gatos_app/widgets/drawer_submenu.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          drawer: const DrawerSubmenuWidget(),
          appBar: AppBar(
            title: const Center(child: Text('Catbreeds')),
          ),
          body: controller.bottomOptions[controller.selectedIndexBottom],
        ),
      ),
    );
  }
}
