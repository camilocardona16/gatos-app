import 'package:dio/dio.dart';
import 'package:gatos_app/app/home/data/datasource/cats_data_source.dart';
import 'package:gatos_app/app/home/data/repositories/cats_repository_impl.dart';
import 'package:gatos_app/app/home/domain/repositories/cat_repository.dart';
import 'package:gatos_app/app/home/domain/usecases/get_cats_use_case.dart';
import 'package:gatos_app/app/home/presentation/get/home_page_controller.dart';
import 'package:gatos_app/app/home/presentation/get/listado_page_controller.dart';
import 'package:gatos_app/core/api_provider.dart';
import 'package:get/get.dart';

void homeDI() {
  Get.lazyPut<Dio>(() => Dio(), fenix: true);
  Get.lazyPut<ApiProvider>(() => ApiProvider(Get.find()), fenix: true);

  Get.lazyPut<HomePageController>(() => HomePageController(), fenix: true);

  Get.lazyPut<CatsDataSource>(() => CatsDataSourceImpl(Get.find()),
      fenix: true);
  Get.lazyPut<CatsRepository>(() => CatsRepositoryImpl(Get.find()),
      fenix: true);

  Get.lazyPut<GetCatsUseCase>(() => GetCatsUseCase(Get.find()), fenix: true);

  Get.lazyPut<ListadoPageController>(() => ListadoPageController(Get.find()),
      fenix: true);
}
