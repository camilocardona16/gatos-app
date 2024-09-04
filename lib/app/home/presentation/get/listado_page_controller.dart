import 'dart:developer';

import 'package:gatos_app/app/home/domain/entities/document.dart';
import 'package:gatos_app/app/home/domain/usecases/get_cats_use_case.dart';
import 'package:gatos_app/core/enviorments.dart';
import 'package:get/get.dart';

class ListadoPageController extends GetxController {
  final GetCatsUseCase _getCatsUseCase;

  late List<Cat> cats = [];

  ListadoPageController(
    this._getCatsUseCase,
  );

  @override
  void onInit() {
    initVars();
    super.onInit();
  }

  void initVars() async {
    cats = await _getCatsUseCase.call(null);
    log(Enviorments.token);
    update();
  }

  void onSearchTextChange(String text) async {
    log(text);
    final response = await _getCatsUseCase.call(text);
    cats = response;
    update();
  }
}
