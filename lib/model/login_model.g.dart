// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel(
    password: json['Password'] as String?,
    username: json['Username'] as String?,
  );
}

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'Password': instance.password,
      'Username': instance.username,
    };
