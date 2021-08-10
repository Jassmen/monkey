import 'package:flutter/cupertino.dart';
import 'package:monkey/api/api_service.dart';
import 'package:monkey/resources/app_strings.dart';

class AppValidator{

  static String? validatorRequired(value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return AppStrings.REQUIRED;
    }
    return null;
  }

  static String? validatorPassword(String? password, BuildContext context){
    if (password == null || password.isEmpty) {
      return AppStrings.REQUIRED;
    }
    if(!password.contains(RegExp(r'[A-Z]'))){
      return AppStrings.UPPER_CASE;
    }
    if(!password.contains(RegExp(r'[a-z]'))){
      return AppStrings.LOWER_CASE;
    }
    if(!password.contains(RegExp(r'[0-9]'))){
      return AppStrings.NUMBER_PASSWORD;
    }
    if(password.length < 6 && password.length >= 16){
      return AppStrings.PASSWORD_RANG;
    }
    return null;
  }

  static String? validatorEmail(String? value, BuildContext context){
    if(value == null || value.isEmpty){
      return AppStrings.REQUIRED;
    }
    bool emailValid = RegExp(
        r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    if(!emailValid || value.isEmpty){
      return AppStrings.VALID_EMAIL;
    }
    return null;
  }

  static String? validatorName(String? value , BuildContext context){
    if(value == null || value.isEmpty)
      return AppStrings.REQUIRED;

    if(value.length < 3 || value.length > 50)
      return AppStrings.NAME_LENGTH_ERROR;

    if(!RegExp(r'[a-zA-Z]+$').hasMatch(value))
      return AppStrings.CONSIST_OF_ONLY_CHAR;

    if(!value[0].contains(RegExp(r'A-Z')))
      return AppStrings.START_WITH_UPPER;

    return null;
  }

  static String? validatorMobile(
      String? value, String? dialNumber, BuildContext context){
    if(value == null || dialNumber == null || value.isNotEmpty){
      String number = dialNumber! + value!;
      if(number.length >= 9 && number.length <= 13)
        return null;
      else
        return AppStrings.VALID_MOBILE;
    }else
      return AppStrings.VALID_MOBILE;
  }
}