import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/resources/index.dart';
import 'package:monkey/screens/login_screen.dart';
import 'package:monkey/utils/app_validator.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';


class SignupScreen extends StatelessWidget {
  SignupScreen();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _mobileController = TextEditingController();

  TextEditingController _addressController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
                children: [
                  (.1.sh).heightBox,
                AppText(text:AppStrings.SIGNUP,color: kBlack,fontSize: 30),
                20.heightBox,
                AppText(text: AppStrings.ADD_YOUR_DETAIL_SIGNUP,color: kBlack12),
                 30.heightBox,
                  _buildNameInput(context),
                 20.heightBox,
                  _buildEmailInput(context),
                 20.heightBox,
                  _buildMobileInput(context),
                 20.heightBox,
                  _buildAddressInput(context),
                 20.heightBox,
                  _buildPasswordInput(context),
                 20.heightBox,
                  _buildConfirmPassInput(context),
                 20.heightBox,
                 buildSignup(),
                 20.heightBox,
                 buildLoginText(context),

        ]),
          ),
        ),
      )
    );
  }

  AppTextFormField _buildNameInput(BuildContext context) {
    return AppTextFormField(
      hintText: AppStrings.NAME,
      validator: (value) => AppValidator.validatorName(value, context),
      controller: _nameController,
    );
  }

  AppTextFormField _buildEmailInput(BuildContext context) {
    return AppTextFormField(
      hintText: AppStrings.EMAIL,
      validator: (value) => AppValidator.validatorEmail(value, context),
      controller: _emailController,
    );
  }

  AppTextFormField _buildMobileInput(BuildContext context) {
    return AppTextFormField(
      hintText: AppStrings.MOBILE_NUMBER,
      validator: (value) => AppValidator.validatorMobile(value,value, context),/////////////////////
      controller: _mobileController,
    );
  }

  AppTextFormField _buildAddressInput(BuildContext context) {
    return AppTextFormField(
        hintText: AppStrings.ADDRESS,
        validator: (value) => AppValidator.validatorRequired(value, context),
        controller: _addressController,
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

  AppButton buildSignup() => AppButton(onPress: (){},text: AppStrings.SIGNUP,);

  Row buildLoginText(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [AppText(text: AppStrings.HAVE_ACCOUNT,color: kBlack12,),
        AppTextButton(onPressed: ()=> navigateAndFinish(context, LoginScreen()),
            child: AppText(text: AppStrings.LOGIN, color: kPrimaryColor,fontWeight: FontWeight.w700,))],);
  }
}
