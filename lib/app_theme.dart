

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kPrimaryColor = Color(0xFFFC6011);
const kStarColor = Color(0xFFEE5A30);
const kBlack12 = Color(0xFF7C7D7E);
const kBlack = Color(0xFF4A4B4D);
const kWhite = Color(0xFFFFFFFF);
const kGrey = Color(0xFFF2F2F2);
const kHint = Color(0xFFB6B7B7);
const kBlue = Color(0xFF367FC0);
const kRed = Color(0xFFDD4B39);



ThemeData appThemeData() => ThemeData(
      primaryColor: kWhite,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backwardsCompatibility: false,
        color: Colors.transparent,
        actionsIconTheme: IconThemeData(color: kGrey),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor:Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        iconTheme: IconThemeData(color: kWhite),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent)),
      )
  );
