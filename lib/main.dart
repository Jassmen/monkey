import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monkey/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/screens/login_screen.dart';

import 'api/api_service.dart';

void main() {
  ApiService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
        designSize: Size(360, 790), builder: () => MaterialApp(debugShowCheckedModeBanner: false, theme: appThemeData(), home: LoginScreen()));
  }
}
