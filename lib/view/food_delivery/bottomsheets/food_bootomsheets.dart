import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../app_colors/app_colors.dart';
import '../../custom_widgets/food_delivery/food_section.dart';
import '../../custom_widgets/gs_taxi.dart';
import '../../custom_widgets/ride/ride.dart';
import '../../ride/messages_screen.dart';

class FoodBottomSheets {
  static void deliveryLocationBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 80.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      'Delivery location',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/close-light.svg'),
                  ],
                ),
                SizedBox(height: 3.4.h),
                const CustomMapTextFormField(
                  hintText: 'Where you want to go ?',
                ),
                SizedBox(height: 2.6.h),
                ChooseOnMap(
                  trailing: 'Favorite',
                  onTapMap: () {},
                ),
                SizedBox(height: 2.6.h),
                SizedBox(
                  height: 43.h,
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 12.px),
                          SuggestionPlaces(
                            title: 'Home',
                            subTitle: '1901 Thornridge Cir. Shiloh',
                            onTap: () {},
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.h),
                CustomButton(
                    title: 'Continue',
                    onTap: () {
                      Get.back();
                      confirmDestinationBottomSheet();
                    }),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void confirmDestinationBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 25.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Delivery location',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.2.h),
                const DestinationLocation(
                  icon: 'assets/icons/suggestion-location.svg',
                  title: 'Rd. Allentown',
                  subTitle: '1901 Thornridge Cir. Shiloh',
                ),
                SizedBox(height: 2.2.h),
                CustomButton(
                    title: 'Confirm Destination ',
                    onTap: () {
                      Get.back();
                      rideRouteBottomSheet();
                    }),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void rideRouteBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 61.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Silver Mercedes',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 1.h),
                    Container(
                      height: 30.px,
                      // width: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.px),
                        color: MyAppColors.greyBlue,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.px),
                          child: Text(
                            '9JGO895',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.px,
                                color: MyAppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.h),
                MessageAndCallButton(
                  onTapMessage: () {
                    Get.to(() => MessagesScreen());
                  },
                  onTapCall: () {
                    Get.back();
                    // reasonForCancelRideBottomSheet();
                  },
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ride route',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     children: [
                //       Column(
                //         children: [
                //           CircleAvatar(
                //             radius: 8,
                //             backgroundColor: Colors.red,
                //           ),
                //           Container(
                //             height: 1.7.h,
                //             color: Colors.red,
                //             width: 2.px,
                //           ),
                //           CircleAvatar(
                //             radius: 8,
                //             backgroundColor: Colors.red,
                //           ),
                //           Container(
                //             height: 1.7.h,
                //             color: Colors.red,
                //             width: 2.px,
                //           ),
                //           CircleAvatar(
                //             radius: 8,
                //             backgroundColor: Colors.red,
                //           ),
                //           Container(
                //             height: 1.7.h,
                //             color: Colors.red,
                //             width: 2.px,
                //           ),
                //           CircleAvatar(
                //             radius: 8,
                //             backgroundColor: Colors.red,
                //           ),
                //           Container(
                //             height: 1.7.h,
                //             color: Colors.red,
                //             width: 2.px,
                //           ),
                //         ],
                //       ),
                //       Expanded(
                //         child: Column(
                //           children: [
                //             Container(
                //               height: 35,
                //               // width: Get.width,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(8.px),
                //                 color: Colors.black,
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                VerticalProgressStepIndicator(
                  title: 'Order accepted',
                  upperLine: false.obs,
                  achieve: true.obs,
                  lowerLine: true.obs,
                ),
                VerticalProgressStepIndicator(
                  title: 'Order accepted',
                  upperLine: true.obs,
                  achieve: true.obs,
                  lowerLine: true.obs,
                ),
                VerticalProgressStepIndicator(
                  title: 'Order accepted',
                  upperLine: true.obs,
                  achieve: true.obs,
                  lowerLine: true.obs,
                ),
                VerticalProgressStepIndicator(
                  title: 'Order accepted',
                  upperLine: true.obs,
                  achieve: false.obs,
                  lowerLine: true.obs,
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Payment method',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.px,
                            color: MyAppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/images/cash.svg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
