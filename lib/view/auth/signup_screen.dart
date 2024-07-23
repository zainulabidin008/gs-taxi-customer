import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../custom_widgets/gs_taxi.dart';
import '../ride/select_ridetype.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24.px),
            child: Column(
              children: [
                SizedBox(height: 2.h),
                SvgPicture.asset('assets/images/splash.svg'),
                SizedBox(height: 5.h),
                Text(
                  'Welcome to Taxi express',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  'Create a new account',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.px,
                      color: MyAppColors.black,
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your name',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                CustomTextFormField(
                  hintText: 'Enter your name',
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Enter phone number',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                SizedBox(
                  height: 48.px,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.hintColor,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(12),
                      isDense: true,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.px),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyAppColors.primaryColor,
                          width: 1.px,
                        ),
                      ),
                      prefixIcon: const CountryCodePicker(
                        // hideMainText: true,
                        onChanged: print,
                        initialSelection: 'United Kingdom',
                        favorite: ['+44', 'UK'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        flagWidth: 20,
                        padding: EdgeInsets.all(0),
                        // showFlagMain: true,
                      ),
                      fillColor: MyAppColors.greyBlue,
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your email (its optional)',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.5.h),
                CustomTextFormField(
                  hintText: 'Example@gmail.com',
                ),
                SizedBox(height: 7.h),
                CustomButton(
                    title: 'Next',
                    onTap: () {
                      Get.to(() => SelectRideTypeScreen());
                    }),
                SizedBox(height: 2.h),
                AccountCheckText(
                  firstText: 'I have an account? ',
                  secondText: 'Login',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
