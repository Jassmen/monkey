
import 'package:flutter/material.dart';
import 'package:monkey/enum/signup_strategy.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';

AppTextFormField buildName() => AppTextFormField(
  hintText: SignUpStrategy.Name,
  background: kGrey,
  textInputType: TextInputType.name,
);

AppTextFormField buildEmail() => AppTextFormField(
  hintText: SignUpStrategy.Email,
  background: kGrey,
  textInputType: TextInputType.emailAddress,
);

AppTextFormField buildMobileNo() => AppTextFormField(
  hintText: SignUpStrategy.MobileNum,
  background: kGrey,
  textInputType: TextInputType.phone,
);

AppTextFormField buildAddress() => AppTextFormField(
  hintText: SignUpStrategy.Address,
  background: kGrey,
  textInputType: TextInputType.streetAddress,
  validator: (value){

  },);

AppTextFormField buildPassword() => AppTextFormField(
  hintText: SignUpStrategy.Password,
  background: kGrey,
  textInputType: TextInputType.visiblePassword,
);

AppTextFormField buildSearchField() => AppTextFormField(
  hintText: SignUpStrategy.SearchFood,
  background: kGrey,
  textInputType: TextInputType.text,
  prefix: Icons.search
);

AppTextFormField buildPasswordConfirm() => AppTextFormField(
  hintText: SignUpStrategy.ConfirmPassword,
  background: kGrey,
  textInputType: TextInputType.visiblePassword,
  padding: 2,
);
