import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toy_app/app/them/color_them.dart';

Widget customSemiBoldText(
    {required String name,
      double? fontSize,
      TextAlign? textAlign,
      FontWeight? fontWeight,

    }) {
  return GestureDetector(
    child: Text(
      name,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: "SfProDisplaySemibold",
        fontSize: fontSize?? 14.sp,
        fontWeight: fontWeight?? FontWeight.w600,
        color:primaryBlack,
      ),
    ),
  );
}