import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/auth/verification_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_colors/app_colors.dart';
import '../custom_widgets/gs_taxi.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.px),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              SvgPicture.asset(
                'assets/images/splash.svg',
                height: 10.h,
                width: 16.h,
              ),
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
              Text(
                'Login to your account',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.px,
                    color: MyAppColors.black,
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.left,
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
              SizedBox(height: 0.6.h),
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
                    ),
                    enabledBorder: OutlineInputBorder(
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
              SizedBox(height: 2.h),
              CustomButton(
                  title: 'Next',
                  onTap: () {
                    Get.to(() => VerificationScreen());
                  }),
              SizedBox(height: 2.h),
              AccountCheckText(
                firstText: "Don't have an account? ",
                secondText: 'Create a new account',
                onTap: () {},
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
