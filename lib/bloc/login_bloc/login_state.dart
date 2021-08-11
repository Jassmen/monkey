import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable{
  @override
  List<Object?> get props => [];
}

class LoginStateInit extends LoginState{}

class LoginStateLoading extends LoginState{}

class LoginStateSuccess  extends LoginState{
  LoginStateSuccess({this.mobile,this.password});
  final String? mobile;
  final String? password;
  @override
  List<Object?> get props => [mobile,password];
}

class LoginStateFailed extends LoginState{
  LoginStateFailed({this.error});
  final String? error;
  @override
  List<Object?> get props => [error];
}