import 'package:equatable/equatable.dart';

class LoginRepository extends Equatable{
  LoginRepository({this.refreshToken,this.resultCode,this.message});
  final String? refreshToken;
  final String? resultCode;
  final String? message;


  @override
  List<Object?> get props => [refreshToken,resultCode,message];
}