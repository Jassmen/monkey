import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'token.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends Equatable {
  LoginResponse();
  @JsonKey(name: 'Result')
  Token? result;
  @JsonKey(name: 'ResultCode')
  String? resultCode;
  @JsonKey(name: 'Message')
  String? message;

  factory LoginResponse.fromJosn(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  List<Object?> get props => [];
}
