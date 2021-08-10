import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/resources/index.dart';
import 'package:monkey/utils/app_validator.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';


class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: [
            (.1.sh).heightBox,
            AppText(text:AppStrings.NEW_PASSWORD,color: kBlack,fontSize: 30),
            20.heightBox,
            AppText(text: AppStrings.NEW_PASSWORD_DETAIL,color: kBlack12,maxLine: 2,textAlign: TextAlign.center),
            30.heightBox,
            _buildPasswordInput(context),
            20.heightBox,
            _buildConfirmPassInput(context),
            20.heightBox,
            AppButton(onPress: (){},text: ButtonNum.next.value,)
          ],
        ),
      ),
    );
  }

  AppTextFormField _buildPasswordInput(BuildContext context) {
    return AppTextFormField(
      hintText: AppStrings.PASSWORD,
      validator: (value) => AppValidator.validatorPassword(value, context),
      controller: _passwordController,
    );
  }

  AppTextFormField _buildConfirmPassInput(BuildContext context) {
    return AppTextFormField(
      hintText: AppStrings.CONFIRM_PASSWORD,
      validator: (value) => AppValidator.validatorPassword(value, context),
      controller: _confirmPasswordController,
    );
  }

}