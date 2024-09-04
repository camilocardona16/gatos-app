import 'package:gatos_app/app/home/presentation/pages/home_page.dart';
import 'package:gatos_app/routes/app.routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
  ];
}
