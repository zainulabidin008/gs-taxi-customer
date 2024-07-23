import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

customScaffoldMessenger(
  BuildContext context,
  String text,
) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14.sp,
          color: MyAppColors.white,
        ),
      ),
      backgroundColor: MyAppColors.primaryColor,
      duration: const Duration(seconds: 2),
    ),
  );
}
