import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey/widgets/index.dart';

import '../app_theme.dart';



class AppButton extends StatelessWidget {
  final String? text;
  final double? width ;
  final double? height;
  final int? textSize;
  final double? radius;
  final Widget? prefix;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool isUpperCase;
  final double? prefixHeight;
  final double? prefixWidth;
  final VoidCallback? onPress;

  const AppButton(
      {this.text,
      this.prefix,
      this.width = 1,
      this.height = 50,
      this.textSize = 18,
      this.radius = 25,
      this.prefixHeight = 17,
      this.prefixWidth = 17,
      required this.onPress,
      this.isUpperCase = false,
      this.textColor = kWhite,
      this.color = kPrimaryColor,
      this.borderColor = Colors.transparent,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!.sw,
      height: height!.h,
      child: MaterialButton(
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildWidget(prefix,height: prefixHeight!,width: prefixWidth!),
            AppText(
              isUpper : isUpperCase,
              text: text!,
              fontSize: textSize!.sp,
              color:textColor),
          ],

        ),

      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius!.w),
        border:Border(
           bottom:  BorderSide(color: borderColor),
           top:  BorderSide(color: borderColor),
           right:  BorderSide(color: borderColor),
           left:  BorderSide(color: borderColor)
        )

      ),
    );
  }

  Container buildWidget(Widget? prefix,{required double height ,required double width } ) {
    return Container(
            width: width.w,
            height: height.h,
            margin: prefix != null ? EdgeInsets.only(right: 10.w) :EdgeInsets.only(right: 0.w)  ,
            child: prefix!= null ? prefix : null,
          );
  }

}
