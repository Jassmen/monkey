import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  LoginModel({this.password, this.mobile});

  final String? password;
  final String? mobile;



  @override
  List<Object?> get props => [password, mobile];
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