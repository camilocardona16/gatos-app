import 'package:dio/dio.dart';
import 'package:gatos_app/core/api_provider.dart';
import 'package:gatos_app/core/enviorments.dart';

abstract class CatsDataSource {
  Future<Response<dynamic>> getCats(String? name);
}

class CatsDataSourceImpl implements CatsDataSource {
  final ApiProvider _apiProvider;

  CatsDataSourceImpl(this._apiProvider);

  @override
  Future<Response<dynamic>> getCats(name) async {
    if (name == null) {
      return await _apiProvider.http.get('${Enviorments.api}breeds');
    } else {
      return await _apiProvider.http.get('${Enviorments.api}breeds/search/',
          queryParameters: {'name': name});
    }
  }
}
