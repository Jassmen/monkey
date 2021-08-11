import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class LoginEventFetch extends LoginEvent{
  LoginEventFetch({this.mobile,this.password});
  final String? mobile;
  final String? password;

  @override
  List<Object?> get props => [mobile,password];
}