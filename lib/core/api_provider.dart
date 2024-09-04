import 'package:dio/dio.dart';
import 'package:gatos_app/core/token.dart';
import 'interceptors.dart';

class ApiProvider {
  late Dio http;

  ApiProvider(this.http) {
    Token.get().then((token) async {
      http = Dio()
        ..interceptors.add(InterceptorsWrapper(
            onError: (DioException e, ErrorInterceptorHandler handler) {
          // Maneja el error, exceptuando el código 308
          if (e.response?.statusCode == 308) {
            handler.resolve(
                e.response!); // Considera el 308 como una respuesta válida
          } else {
            ResponseInterceptors.errorInterceptor(e, handler);
          }
        }))
        ..options = BaseOptions(
          headers: {'x-api-key': '$token'},
          // connectTimeout: 30 * 1000,
          // receiveTimeout: 30 * 1000
        );
    });
  }
}
