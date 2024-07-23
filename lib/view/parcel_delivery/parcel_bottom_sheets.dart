import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../custom_widgets/gs_taxi.dart';
import '../custom_widgets/ride/ride.dart';

class ParcelBottomSheets {
  static void parcelOpenBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 40.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Parcel delivery',
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
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Pickup',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    // SizedBox(width: 10.px),
                    SvgPicture.asset(
                      'assets/icons/octicon_dot-16.svg',
                      height: 24.px,
                      width: 24.px,
                    ),
                    SizedBox(width: 12.px),
                    Expanded(
                      child: Container(
                        height: 45.px,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.px),
                          color: MyAppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 8.px),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rd. Allentown',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.px,
                                      color: MyAppColors.subtitle,
                                    ),
                                  ),
                                ),
                                Text(
                                  '1901 Thornridge Cir. Shiloh',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.px,
                                      color: MyAppColors.hintColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Destination',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    // SizedBox(width: 10.px),
                    SvgPicture.asset(
                      'assets/icons/suggestion-location.svg',
                      height: 24.px,
                      width: 24.px,
                    ),
                    SizedBox(width: 12.px),
                    Expanded(
                      child: Container(
                        height: 45.px,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.px),
                          color: MyAppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 8.px),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rd. Allentown',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.px,
                                      color: MyAppColors.subtitle,
                                    ),
                                  ),
                                ),
                                Text(
                                  '1901 Thornridge Cir. Shiloh',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.px,
                                      color: MyAppColors.hintColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                CustomButton(
                  title: 'Confirm Parcel route',
                  onTap: () {
                    Get.back();
                    // orderRideRouteBottomSheet();
                  },
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
