import 'package:flutter/material.dart';
import 'package:gatos_app/routes/app.routes.dart';
import 'package:get/get.dart';

class DrawerSubmenuWidget extends StatefulWidget {
  const DrawerSubmenuWidget({Key? key}) : super(key: key);
  @override
  DrawerSubmenuWidgett createState() => DrawerSubmenuWidgett();
}

class DrawerSubmenuWidgett extends State<DrawerSubmenuWidget> {
  // submenu
  static const TextStyle submenuOptionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .4,
      child: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 10, left: 5),
            children: [
              ListTile(
                title: const Text('Inicio'),
                minLeadingWidth: 0,
                leading: const Icon(Icons.home),
                visualDensity: VisualDensity.standard,
                onTap: () {
                  Get.offAllNamed(AppRoutes.home);
                },
              ),
            ],
          ),
          ListView(
            reverse: true,
            padding: const EdgeInsets.only(top: 10, left: 5),
            children: [
              ListTile(
                title: const Text('Salir'),
                minLeadingWidth: 0,
                leading: const Icon(Icons.exit_to_app),
                visualDensity: VisualDensity.standard,
                onTap: () {
                  Get.offAllNamed(AppRoutes.home);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
