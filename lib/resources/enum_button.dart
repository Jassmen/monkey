import 'package:monkey/resources/app_strings.dart';

enum ButtonNum{ google,facebook,create,login,send,next}

extension ButtonEnum on ButtonNum{
  String get value{
    switch(this){
      case ButtonNum.facebook:
        return AppStrings.LOGIN_FACEBOOK;
      case ButtonNum.google:
        return AppStrings.LOGIN_GOOGLE;
      case ButtonNum.create:
        return AppStrings.CREATE_ACCOUNT;
      case ButtonNum.login:
        return AppStrings.LOGIN;
      case ButtonNum.send:
        return AppStrings.SEND;
      case ButtonNum.next:
        return AppStrings.NEXT;

    }
  }
}