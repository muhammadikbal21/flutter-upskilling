import 'package:dio/dio.dart';

class ApiHelper {
  ApiHelper._privateConstructor();

  static ApiHelper INSTANCE = ApiHelper._privateConstructor();

  final _dio = Dio(BaseOptions(
    baseUrl: 'http://10.10.50.128:3007/v1'
  ));

  Future<dynamic> postData(String path, Map<String, dynamic> data) async {
    try {
      Response response = await _dio.post(path, data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception('Could not Connect');
    }
  }
}