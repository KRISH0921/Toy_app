import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toy_app/app/them/color_them.dart';

Widget customMediumText(
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
        fontFamily: "SfProDisplayMedium",
        fontSize: fontSize?? 16.sp,
        fontWeight: fontWeight?? FontWeight.w500,
        color:primaryWight,
      ),
    ),
  );
}