import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monkey/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/screens/dashboard_screen.dart';
import 'package:monkey/screens/first_screen.dart';
import 'package:monkey/screens/home_screen.dart';
import 'package:monkey/screens/new_password_screen.dart';
import 'package:monkey/screens/otp_screen.dart';
import 'package:monkey/screens/reset_password.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return ScreenUtilInit(
      designSize: Size(360,790),
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appThemeData(),
        home:HomeScreen()
      )
    );
  }


}
