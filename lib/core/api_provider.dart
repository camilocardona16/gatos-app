import 'package:dio/dio.dart';
import 'package:gatos_app/core/enviorments.dart';
import 'interceptors.dart';

class ApiProvider {
  late Dio http;

  ApiProvider(this.http) {
    http = Dio()
      ..interceptors.add(InterceptorsWrapper(
          onError: (DioException e, ErrorInterceptorHandler handler) {
        ResponseInterceptors.errorInterceptor(e, handler);
      }))
      ..options = BaseOptions(
        headers: {'x-api-key': Enviorments.token},
        // connectTimeout: 30 * 1000,
        // receiveTimeout: 30 * 1000
      );
  }
}
