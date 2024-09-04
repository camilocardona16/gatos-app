import 'package:gatos_app/app/home/data/datasource/cats_data_source.dart';
import 'package:gatos_app/app/home/data/models/cats/cats_model.dart';
import 'package:gatos_app/app/home/domain/entities/document.dart';
import 'package:gatos_app/app/home/domain/repositories/cat_repository.dart';

class CatsRepositoryImpl implements CatsRepository {
  final CatsDataSource _userFormDataSource;

  CatsRepositoryImpl(this._userFormDataSource);

  @override
  Future<List<Cat>> getCats(String? name) async {
    final resp = await _userFormDataSource.getCats(name);
    return catsFromJson(resp.data);
  }
}
