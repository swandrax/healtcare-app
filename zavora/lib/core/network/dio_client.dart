import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient([Dio? dio])
      : _dio = dio ?? Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 15),
            receiveTimeout: const Duration(seconds: 15),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

  Dio get dio => _dio;
}
