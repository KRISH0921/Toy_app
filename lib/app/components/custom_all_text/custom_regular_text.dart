import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toy_app/app/them/color_them.dart';

Widget customRegularText(
    {required String name,
      double? fontSize,
      Color? color,
      TextAlign? textAlign,
      FontWeight? fontWeight,

    }) {
  return GestureDetector(
    child: Text(
      name,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: "SfProDisplayRegular",
        fontSize: fontSize?? 15.sp,
        fontWeight: fontWeight?? FontWeight.w400,
        color:color?? primaryBlack,
      ),
    ),
  );
}