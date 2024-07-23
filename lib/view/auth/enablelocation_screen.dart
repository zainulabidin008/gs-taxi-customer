import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:gs_taxi/view/custom_widgets/gs_taxi.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'login_screen.dart';

class EnableLocation extends StatelessWidget {
  const EnableLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.px),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 24.px,
                  ),
                  GsTaxiText(first: 'Gs', second: 'Taxi'),
                  SizedBox(
                    height: 40.px,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Share your location to discover the best offers nearby.',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.px,
                        color: MyAppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.px),
                  SvgPicture.asset('assets/icons/location.svg'),
                  Text(
                    'Your location',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.px,
                        color: MyAppColors.greyBlack,
                      ),
                    ),
                  ),
                  Text(
                    'Not get',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.px,
                        color: MyAppColors.subtitle,
                      ),
                    ),
                  ),
                ],
              ),
              CustomButton(
                title: 'Enable Location',
                onTap: () {
                  Get.to(() => LoginScreen());
                },
              ),
              // SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}
