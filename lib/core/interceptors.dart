import 'package:dio/dio.dart';
import 'package:flutter/material.dart' show Colors;
import 'package:get/get.dart';

class ResponseInterceptors {
  static errorInterceptor(DioException e, h) async {
    if (e.type == DioExceptionType.unknown) {
      Get.snackbar(
        'Sin conexion...',
        'Necesitas una conexion a Internet para poder continuar',
        backgroundColor: Colors.red.withOpacity(.9),
        duration: const Duration(minutes: 1),
      );
    } else if (e.type == DioExceptionType.connectionTimeout) {
      Get.snackbar(
        'Conexion lenta...',
        'Puede que la conexion sea inestable, intenta nuevamente',
        backgroundColor: Colors.red.withOpacity(.9),
        duration: const Duration(minutes: 1),
      );
    } else {
      bool snackShowed = false;
      try {
        if (e.response?.statusCode != 500) {
          for (var key in e.response?.data?.keys) {
            if (!snackShowed) {
              if (e.response?.data[key] is List) {
                Get.snackbar(
                  'Error',
                  "$key : ${e.requestOptions.baseUrl + e.requestOptions.path} : ${e.response?.data[key][0]}",
                  backgroundColor: Colors.red.withOpacity(.9),
                  duration: const Duration(minutes: 1),
                );
              } else {
                Get.snackbar(
                  'Error',
                  "$key :${e.requestOptions.baseUrl + e.requestOptions.path} : ${e.response?.data[key]}",
                  backgroundColor: Colors.red.withOpacity(.9),
                  duration: const Duration(minutes: 1),
                );
              }
            }
            snackShowed = true;
          }
        } else {
          Get.snackbar(
            'Error',
            "Error 500: ${e.response!.data}",
            backgroundColor: Colors.red.withOpacity(.9),
            duration: const Duration(minutes: 1),
          );
        }
      } catch (e) {
        Get.snackbar(
          'Vaya...',
          'Parece que algo a salido mal',
          backgroundColor: Colors.red.withOpacity(.9),
          duration: const Duration(minutes: 1),
        );
      }
    }

    return h.next(e);
  }
}
