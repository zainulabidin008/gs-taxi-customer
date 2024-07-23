import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/auth/signup_screen.dart';
import 'package:gs_taxi/view/custom_widgets/gs_taxi.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_colors/app_colors.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.px),
                SvgPicture.asset('assets/images/verificaton-image.svg'),
                SizedBox(height: 24.px),
                Text(
                  'Verification Code',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20.px,
                      color: MyAppColors.black,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: '',
                    children: [
                      TextSpan(
                        text:
                            "Enter verification code from SMS, which sent to +1 320 462 6050 ",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "Edit Phone number",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.blueDark,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                OtpTextField(
                  numberOfFields: 6,
                  keyboardType: TextInputType.number,
                  borderColor: const Color(0xFF512DA8),
                  // showFieldAsBox: true,
                  fillColor: const Color(0xffF3F5F7),
                  filled: true,
                  fieldWidth: 43.px,
                  borderRadius: BorderRadius.circular(8.px),
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    // otpVerificationController.text = verificationCode;
                  }, // end onSubmit
                ),
                SizedBox(height: 5.h),
                CustomButton(
                    title: 'Verify',
                    onTap: () {
                      Get.to(() => SignupScreen());
                    }),
                SizedBox(height: 2.h),
                AccountCheckText(
                  firstText: "Didn’t received the code? ",
                  secondText: ' Resend',
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
