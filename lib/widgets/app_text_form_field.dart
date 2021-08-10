import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_theme.dart';

class AppTextFormField extends StatelessWidget {

  final double? width;
  final double? height;
  final String? hintText;
  final String? labelText;
  final IconData? suffix;
  final IconData? prefix;
  final bool isPassword;
  final bool autofocus;
  final double? radius;
  final double? padding;
  final Color? hintColor;
  final Color? background;
  final Color? borderColor;
  final TextAlign? textAlign;
  final GestureTapCallback? onTap;
  final TextInputType? textInputType;
  final TextDirection? textDirection;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final Function(String?)? onSave;
  final FormFieldValidator<String>? validator;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextEditingController? controller;


   AppTextFormField({
      this.width,
      this.height,
      this.hintText,
      this.labelText,
      this.textInputType,
      this.suffix,
      this.prefix,
      this.validator,
      this.onTap,
      this.onSubmit,
      this.onChanged,
      this.controller,
      this.onSave,
      this.padding = 17,
      this.textAlign = TextAlign.start,
      this.isPassword= false,
      this.autofocus= false,
      this.floatingLabelBehavior,
      this.textDirection = TextDirection.ltr,
      this.radius = 25,
      this.hintColor = kBlack12,
      this.background = kGrey,
      this.borderColor = Colors.transparent
   });



   @override
  Widget build(BuildContext context) {
    return Container(
       width: width ?? null,
       height: height ?? null,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(radius!.w)
      ),
      child: TextFormField(
        keyboardType:textInputType,
        onSaved: onSave,
        onTap: onTap,
        validator:validator,
        autofocus:autofocus,
        onChanged: onChanged,
        textAlign: textAlign!,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        controller: controller,
        decoration:InputDecoration(
          hintText: hintText,
          labelText: labelText,
          suffixIcon:Icon(suffix,color: kHint,),
          prefixIcon: Icon(prefix ,),
          hintTextDirection: textDirection,
          hintStyle: TextStyle(color: hintColor),
          contentPadding: EdgeInsets.all(padding!.w),
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: borderColor!),
          //     borderRadius: BorderRadius.circular(radius!.w)
          // ),
        ),
        cursorColor:kBlack12,
        textDirection:textDirection ,
      ),
    );
  }
}
