import 'package:dio/dio.dart';

class ApiService {
  static Dio? dio;
  static void init() {
    dio = Dio(BaseOptions(baseUrl: 'http://160.153.234.82:5000/', receiveDataWhenStatusError: true));
  }

  static Future<Response<T>> postApi<T>({
    required String path,
    Map<String?, dynamic> body = const {},
  }) async {
    Response<T> response = await dio!.post(path, data: body);
    return response;
  }
}
