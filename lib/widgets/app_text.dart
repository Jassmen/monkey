import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/app_theme.dart';


class AppText extends StatelessWidget {
  final String? text;
  final Color color;
  final double? fontSize;
  final FontWeight fontWeight;
  final double height;
  final TextDirection textDirection;
  final double? letterSpacing;
  final bool isUpper;
  final int? maxLine;
  final TextAlign? textAlign;

  const AppText({
      this.text,
      this.letterSpacing,
      this.fontSize = 15,
      this.fontWeight = FontWeight.normal,
      this.textDirection = TextDirection.ltr,
      this.color = kWhite,
      this.height = 1,
      this.isUpper = false,
      this.maxLine,
      this.textAlign
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      isUpper ? text!.toUpperCase() : text!,
      textDirection: textDirection,
      maxLines:maxLine ,
      textAlign:textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
        height: height ,
        letterSpacing: letterSpacing ?? 1.0,
      ),

    );
  }
}
