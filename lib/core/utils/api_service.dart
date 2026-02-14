import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  final baseUrl = "https://qent.azurewebsites.net/api/";

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    var response = await _dio.post(
      '$baseUrl$endPoint',
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
    return response.data;
  }
}
