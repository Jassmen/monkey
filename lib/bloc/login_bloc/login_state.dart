import 'package:equatable/equatable.dart';
import 'package:monkey/model/login_response.dart';

abstract class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginStateInit extends LoginState {}

class LoginStateLoading extends LoginState {}

class LoginStateSuccess extends LoginState {
  LoginStateSuccess({required this.loginResponse});

  final LoginResponse loginResponse;
  
  @override
  List<Object?> get props => [loginResponse];
}

class LoginStateFailed extends LoginState {
  LoginStateFailed({this.error});
  final String? error;
  @override
  List<Object?> get props => [error];
}
