
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toy_app/app/components/custom_all_text/custom_medium_text.dart';
import 'package:toy_app/app/them/color_them.dart';

class CustomButton extends StatefulWidget {
  CustomButton({
    super.key,
    required this.name,
    required this.onTap,
    this.buttonColor,
    this.fontFamily,
    this.fontColor,
    this.height,
    this.width,
    this.fontSize,
    this.process,
    this.borderRadius,
  });

  String name;
  Function onTap;
  Color? buttonColor;
  String? fontFamily;
  Color? fontColor;
  double? height;
  double? width;
  double? fontSize;
  bool? process;
  BorderRadius? borderRadius;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap.call();
      },
      child: Container(
        height: widget.height ?? 36.h,
        width: widget.width?? 120,
        decoration: BoxDecoration(
          color: widget.buttonColor ?? primaryPink,
          borderRadius: widget.borderRadius ?? BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        alignment: Alignment.center,
        child: customMediumText(
          name: widget.name,
          fontSize: widget.fontSize ?? 16.sp,)
      ),
    );
  }
}
