import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toy_app/app/them/color_them.dart';

Widget customBoldText(
    {required String name,
      double? fontSize,
      TextAlign? textAlign,
      FontWeight? fontWeight,
      Color? textColor,

    }) {
  return GestureDetector(
    child: Text(
      name,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: "SfProDisplayBold",
        fontSize: fontSize?? 24.sp,
        fontWeight: fontWeight?? FontWeight.w700,
        color:textColor?? primaryBlack,
      ),
    ),
  );
}