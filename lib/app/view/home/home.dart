import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toy_app/app/components/custom_all_text/custom_bold_text.dart';
import 'package:toy_app/app/components/custom_all_text/custom_regular_text.dart';
import 'package:toy_app/app/components/custom_button/custom_button.dart';
import 'package:toy_app/app/them/color_them.dart';
import 'package:toy_app/app/view/home/controller/home_controller/home_controller.dart';
import 'package:toy_app/app/view/home/model/home_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWight,
      body: Column(
        children: [
          Container(
            height: 230.h,
            color: primaryPink,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 70.h, right: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customBoldText(
                          name: "Hello👋 \nJacob Jones",
                          textColor: primaryWight,
                          fontSize: 22.sp),
                      SvgPicture.asset("assets/images/bell.svg")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.h, left: 20.h, right: 20.h),
                  child: Container(
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: primaryWight,
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 16.h,vertical: 15.h),
                          child: SvgPicture.asset("assets/images/search.svg"),
                        ),
                        customRegularText(name: "Search here",fontSize: 17.sp,color: primaryDarkGrey),
                        Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(right: 16.h,top: 15.h,bottom: 15.h),
                          child: SvgPicture.asset("assets/images/filter.svg"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
         Expanded(
           child: ListView(
             children: [
               Padding(
                 padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 20.h),
                 child: Stack(
                   children: [
                     Image.asset("assets/images/child.png"),
                     Padding(
                       padding: EdgeInsets.only(top: 24.h, left: 14.h),
                       child: customBoldText(
                           name: "Your Complete Guide \nto Newborn care!",
                           fontSize: 20.sp),
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: 82.h, left: 14.h),
                       child: customRegularText(
                           name: "Little Learners Child Care", fontSize: 15.sp),
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: 110.h, left: 14.h),
                       child: CustomButton(
                           name: "Shop Now",
                           fontFamily: "SfProDisplayBold",
                           onTap: () {}),
                     ),
                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 16.h),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customBoldText(name: "Around You", fontSize: 18.sp),
                     customRegularText(name: "View All", fontSize: 13.sp)
                   ],
                 ),
               ),
               SizedBox(
                 height: 218.h,
                 child: ListView.builder(
                   itemCount: controller.aroundYou.length,
                   padding: EdgeInsets.symmetric(horizontal: 8.h),
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) {
                     HomeModel data = controller.aroundYou[index];
                     return GestureDetector(
                       onTap: () {
                         Get.toNamed("details");
                       },
                       child: Padding(
                         padding: EdgeInsets.symmetric(horizontal: 8.h),
                         child: Container(
                           decoration: BoxDecoration(
                               color: primaryWight,
                               borderRadius: BorderRadius.all(Radius.circular(12.r)),
                               boxShadow: [
                                 BoxShadow(
                                   color: primaryShowDow,
                                   blurRadius: 16.r,
                                   offset: Offset(0, 3),
                                   spreadRadius: 0,
                                 ),
                               ]),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: EdgeInsets.symmetric(
                                     horizontal: 8.h, vertical: 8.h),
                                 child: Stack(
                                   alignment: Alignment.topRight,
                                   children: [
                                     Image.asset(
                                       "${data.image}",
                                       height: 118.h,
                                     ),
                                     SvgPicture.asset("${data.subImage}")
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding:  EdgeInsets.only(left: 8.h),
                                 child: customRegularText(
                                     name: "${data.title}", fontSize: 17.sp),
                               ),
                               Padding(
                                 padding:  EdgeInsets.only(left: 8.h,top: 4.h),
                                 child: Row(
                                   children: [
                                     SvgPicture.asset("${data.icon}"),
                                     SizedBox(
                                       width: 4.h,
                                     ),
                                     customRegularText(
                                         name: "${data.location}",
                                         fontSize: 13.sp,
                                         color: primaryDarkGrey)
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding:  EdgeInsets.only(left: 8.h,right: 8.h,top: 4.h),
                                 child: Row(
                                   children: [
                                     customRegularText(name: "${data.price}"),
                                     customRegularText(name: "/hr",color: primaryDarkGrey),
                                     SizedBox(width: 100.h,),
                                     SvgPicture.asset("${data.subIcon}"),
                                     customRegularText(name: "${data.rating}",),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     );
                   },
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(top:24,left: 20.h, right: 20.h, bottom: 12.h),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customBoldText(name: "Popular For You", fontSize: 18.sp),
                     customRegularText(name: "View All", fontSize: 13.sp)
                   ],
                 ),
               ),
               SizedBox(
                 height: 190.h,
                 child: ListView.builder(
                   itemCount: controller.popularForYou.length,
                   padding: EdgeInsets.symmetric(horizontal: 8.h),
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) {
                     HomeModel data = controller.popularForYou[index];
                     return Padding(
                       padding: EdgeInsets.symmetric(horizontal: 8.h),
                       child: Container(
                         decoration: BoxDecoration(
                             color: primaryWight,
                             borderRadius: BorderRadius.all(Radius.circular(12.r)),
                             boxShadow: [
                               BoxShadow(
                                 color: Color(0x1C000000),
                                 blurRadius: 16,
                                 offset: Offset(0, 3),
                                 spreadRadius: 0,
                               )
                             ],
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: EdgeInsets.symmetric(
                                   horizontal: 8.h, vertical: 8.h),
                               child: Stack(
                                 alignment: Alignment.topRight,
                                 children: [
                                   Image.asset(
                                     "${data.image}",
                                     height: 95.h,
                                   ),
                                   SvgPicture.asset("${data.subImage}")
                                 ],
                               ),
                             ),
                             Padding(
                               padding:  EdgeInsets.only(left: 8.h),
                               child: customRegularText(
                                   name: "${data.title}", fontSize: 15.sp),
                             ),
                             Padding(
                               padding:  EdgeInsets.only(left: 8.h,top: 4.h),
                               child: Row(
                                 children: [
                                   SvgPicture.asset("${data.icon}"),
                                   SizedBox(
                                     width: 4.h,
                                   ),
                                   customRegularText(
                                       name: "${data.location}",
                                       fontSize: 13.sp,
                                       color: primaryDarkGrey)
                                 ],
                               ),
                             ),
                             Padding(
                               padding:  EdgeInsets.only(left: 8.h,right: 8.h,top: 4.h),
                               child: Row(
                                 children: [
                                   customRegularText(name: "${data.price}"),
                                   customRegularText(name: "/hr",color: primaryDarkGrey),
                                   SizedBox(width: 60.h,),
                                   SvgPicture.asset("${data.subIcon}"),
                                   customRegularText(name: "${data.rating}",),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                     );
                   },
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(top:24,left: 20.h, right: 20.h, bottom: 12.h),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     customBoldText(name: "Article For You", fontSize: 18.sp),
                     customRegularText(name: "View All", fontSize: 13.sp)
                   ],
                 ),
               ),
               SizedBox(
                 height: 212.h,
                 child: ListView.builder(
                   itemCount: controller.articleForYou.length,
                   padding: EdgeInsets.symmetric(horizontal: 8.h),
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) {
                     HomeModel data = controller.articleForYou[index];
                     return Padding(
                       padding: EdgeInsets.symmetric(horizontal: 8.h),
                       child: Container(
                         decoration: BoxDecoration(
                             color: primaryWight,
                             borderRadius: BorderRadius.all(Radius.circular(12.r)),
                             boxShadow: [
                               BoxShadow(
                                 color: primaryShowDow,
                                 blurRadius: 16.r,
                                 offset: Offset(0, 3),
                                 spreadRadius: 0,
                               ),
                             ]),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: EdgeInsets.symmetric(
                                   horizontal: 8.h, vertical: 8.h),
                               child: Stack(
                                 alignment: Alignment.topRight,
                                 children: [
                                   Image.asset(
                                     "${data.image}",
                                     height: 118.h,
                                   ),
                                   SvgPicture.asset("${data.subImage}")
                                 ],
                               ),
                             ),
                             Padding(
                               padding:  EdgeInsets.only(left: 8.h),
                               child: customRegularText(
                                   name: "${data.title}", fontSize: 17.sp),
                             ),
                             Padding(
                               padding:  EdgeInsets.only(left: 8.h,top: 4.h),
                               child: customRegularText(name: "${data.location}",color: primaryDarkGrey),
                             )
                           ],
                         ),
                       ),
                     );
                   },
                 ),
               ),
             ],
           ),
         ),
          SizedBox(height: 20.h,)
        ],
      ),
    );
  }
}
