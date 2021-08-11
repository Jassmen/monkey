import 'package:equatable/equatable.dart';
import 'package:monkey/model/login_model.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginEventFetch extends LoginEvent {
  LoginEventFetch({required this.loginModel});
  final LoginModel loginModel;

  @override
  List<Object?> get props => [loginModel];
}
