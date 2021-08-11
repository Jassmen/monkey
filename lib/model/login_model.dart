import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends Equatable {
  LoginModel({this.password, this.username});

  @JsonKey(name: 'Password')
  final String? password;
  @JsonKey(name: 'Username')
  final String? username;

  factory LoginModel.fromJosn(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  @override
  List<Object?> get props => [password, username];
}



// class LoginModel extends Equatable{
//   LoginModel({this.refreshToken,this.resultCode,this.message});
//   final String? refreshToken;
//   final String? resultCode;
//   final String? message;
//
//
//   @override
//   List<Object?> get props => [refreshToken,resultCode,message];
// }