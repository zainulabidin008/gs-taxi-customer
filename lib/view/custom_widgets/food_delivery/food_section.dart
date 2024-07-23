import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../app_colors/app_colors.dart';

class FoodCustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const FoodCustomTextFormField(
      {super.key, required this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.px,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.px),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 1), // Offset
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          cursorHeight: 27.px,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11.px,
                color: MyAppColors.greyBlack,
              ),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 3.h, horizontal: 2.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.px),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/ri_search-line.svg',
              ),
            ),
            fillColor: MyAppColors.white,
            filled: true,
          ),
        ),
      ),
    );
  }
}

class VerticalProgressStepIndicator extends StatelessWidget {
  const VerticalProgressStepIndicator(
      {super.key,
      required this.upperLine,
      required this.lowerLine,
      required this.achieve,
      required this.title});
  final RxBool upperLine, lowerLine, achieve;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 35.px,
          child: Column(
            children: [
              if (upperLine.value) ...[
                Expanded(
                  child: Container(
                    width: 2.px,
                    color: MyAppColors.primaryColor,
                  ),
                ),
              ],
              if (!upperLine.value) ...[
                Expanded(
                  child: Container(
                    width: 2.px,
                    color: Colors.white,
                  ),
                ),
              ],
              achieve.value
                  ? CircleAvatar(
                      radius: 8,
                      child: SvgPicture.asset('assets/icons/check-mark.svg'),
                    )
                  : CircleAvatar(
                      radius: 8,
                      backgroundColor: MyAppColors.primaryColor,
                    ),
              if (lowerLine.value) ...[
                Expanded(
                  child: Container(
                    width: 2.px,
                    color: MyAppColors.primaryColor,
                  ),
                ),
              ],
              if (!lowerLine.value) ...[
                Expanded(
                  child: Container(
                    width: 2.px,
                    color: Colors.white,
                  ),
                ),
              ],
            ],
          ),
        ),
        SizedBox(
          width: 2.6.h,
        ),
        Expanded(
          flex: 7,
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.px),
              color: MyAppColors.greyBlue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.px),
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.px,
                        color: MyAppColors.subtitle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
