import 'package:gatos_app/app/home/domain/entities/document.dart';

abstract class CatsRepository {
  Future<List<Cat>> getCats(String? name);
}
