import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:monkey/api/api_path.dart';
import 'package:monkey/api/api_service.dart';
import 'package:monkey/model/login_model.dart';
import 'package:monkey/model/login_response.dart';

class LoginRepository {
  static Future<LoginResponse> login({required LoginModel loginModel}) async {
    final Response response = await ApiService.postApi(
      path: ApiPath.TokenGenerate,
      body: loginModel.toJson(),
    );
    return LoginResponse.fromJosn(response.data);
  }
}
