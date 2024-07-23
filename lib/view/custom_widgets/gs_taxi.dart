import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';

class GsTaxiText extends StatelessWidget {
  final String first;
  final String second;
  const GsTaxiText({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        children: [
          TextSpan(
            text: first,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.px,
                fontStyle: FontStyle.italic,
                color: MyAppColors.primaryColor,
              ),
            ),
          ),
          TextSpan(
            text: second,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.px,
                fontStyle: FontStyle.italic,
                color: MyAppColors.secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.px,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.px),
          color: MyAppColors.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.px,
                color: MyAppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AccountCheckText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onTap;
  const AccountCheckText(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: '',
        children: [
          TextSpan(
            text: firstText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.px,
                color: MyAppColors.subtitle,
              ),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = () => onTap,
            text: secondText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.px,
                color: MyAppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const CustomTextFormField(
      {super.key, this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.px,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.px,
              color: MyAppColors.hintColor,
            ),
          ),
          contentPadding: const EdgeInsets.all(12),
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
          fillColor: MyAppColors.greyBlue,
        ),
      ),
    );
  }
}
