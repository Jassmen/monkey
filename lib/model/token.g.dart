// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token()
    ..authenticationToken = json['AuthenticationToken'] as String?
    ..refreshToken = json['RefreshToken'] as String?;
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'AuthenticationToken': instance.authenticationToken,
      'RefreshToken': instance.refreshToken,
    };
