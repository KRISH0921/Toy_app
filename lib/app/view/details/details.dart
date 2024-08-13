import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toy_app/app/components/custom_all_text/custom_bold_text.dart';
import 'package:toy_app/app/components/custom_all_text/custom_regular_text.dart';
import 'package:toy_app/app/components/custom_button/custom_button.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/Newbies.png",
                height: 400.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 68.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset("assets/images/arrow.svg")),
                    SvgPicture.asset("assets/images/likefill.svg"),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customBoldText(name: "Newbies and Tots Childcare",fontSize: 18.sp),
                      customBoldText(name: "\$150.00/hr",fontSize: 18.sp),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20.h,top: 8.h),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/star.svg"),
                      customRegularText(name: " 4.0 (2k reviews)",fontSize: 15.sp)
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 24.h,top: 20.h),
                  child: customRegularText(name: "We offer a variety of activities tailored to the"
                      "\n developmental stages of infants, toddlers, and"
                      "\npreschoolers. From sensory play and creative arts to"
                      "\nearly literacy and numeracy, we provide a balanced curriculum that...Read More"),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20.h,top: 20.h),
                  child: customBoldText(name: "Our Services",fontSize: 16.sp),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20.h,top: 12.h),
                  child: customRegularText(name: "Safe and Secure Facilities "
                      "\nParental Involvement "
                      "\nBalanced Nutrition"
                      "\nExperienced and Caring Staff"),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20.h,top: 20.h),
                  child: customBoldText(name: "Childcare Information",fontSize: 16.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h,right: 20.h,top: 12.h,bottom: 36.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/Jenny.png",height: 60.h,),
                      Padding(
                        padding:  EdgeInsets.only(left: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customBoldText(name: "Jenny Wilson",fontSize: 18.sp),
                            customRegularText(name: "Child care Owner",fontSize: 14.sp),
                          ],
                        ),
                      ),
                      SizedBox(width: 70.h,),
                      Padding(
                        padding:  EdgeInsets.only(top: 6.h),
                        child: SvgPicture.asset("assets/images/phone.svg"),
                      ),
                      SizedBox(width: 12.h,),
                      Padding(
                        padding:  EdgeInsets.only(top: 6.h),
                        child: SvgPicture.asset("assets/images/Message.svg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20.h,right: 20.h,bottom: 20.h),
            child: CustomButton(
              height: 55.h,
                width: double.infinity,
                borderRadius: BorderRadius.all(Radius.circular(44.r)),
                name: "Book an Appointment",
                fontSize: 18.sp,
                onTap: (){}),
          )
        ],
      ),
    );
  }
}
