// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse()
    ..result = json['Result'] == null
        ? null
        : Token.fromJson(json['Result'] as Map<String, dynamic>)
    ..resultCode = json['ResultCode'] as String?
    ..message = json['Message'] as String?;
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'Result': instance.result,
      'ResultCode': instance.resultCode,
      'Message': instance.message,
    };
