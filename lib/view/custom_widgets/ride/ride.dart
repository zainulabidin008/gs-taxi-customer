import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectRideWidget extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;
  const SelectRideWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 11.h,
        width: 12.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.px),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 3, // Blur radius
              offset: Offset(0, 1), // Offset
            ),
          ],
          color: MyAppColors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(2.px),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                image,
                height: 6.h,
                width: 6.h,
              ),
              Text(
                textAlign: TextAlign.left,
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 10.px,
                    color: MyAppColors.subtitle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomMapTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const CustomMapTextFormField(
      {super.key, this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/octicon_dot-16.svg',
          height: 20.px,
          width: 20.px,
        ),
        SizedBox(width: 4.px),
        Expanded(
          child: SizedBox(
            height: 40.px,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.px,
                    color: MyAppColors.subtitle,
                  ),
                ),
                contentPadding: EdgeInsets.all(20.px),
                isDense: true,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.px),
                  borderSide: BorderSide.none,
                ),
                fillColor: MyAppColors.greyBlue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChooseOnMap extends StatelessWidget {
  final String? trailing;
  final VoidCallback onTapMap;
  final VoidCallback? onTapFavourite;
  const ChooseOnMap(
      {super.key, required this.onTapMap, this.onTapFavourite, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10.px),
        SvgPicture.asset(
          'assets/icons/choose-location.svg',
          height: 24.px,
          width: 24.px,
        ),
        SizedBox(width: 1.h),
        GestureDetector(
          onTap: onTapMap,
          child: Text(
            'Choose on map',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.px,
                color: MyAppColors.subtitle,
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTapFavourite,
          child: Text(
            trailing != null ? trailing! : "",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.px,
                color: MyAppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SuggestionPlaces extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String subTitle;
  const SuggestionPlaces(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.px,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.px),
        color: MyAppColors.greyBlue,
      ),
      child: Row(
        children: [
          SizedBox(width: 10.px),
          SvgPicture.asset('assets/icons/suggestion-location.svg'),
          SizedBox(width: 12.px),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.px,
                    color: MyAppColors.subtitle,
                  ),
                ),
              ),
              Text(
                subTitle,
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
    );
  }
}

class DestinationLocation extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  const DestinationLocation(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SizedBox(width: 10.px),
        SvgPicture.asset(
          icon,
          height: 24.px,
          width: 24.px,
        ),
        SizedBox(width: 12.px),
        Expanded(
          child: Container(
            height: 45.px,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.px),
              color: MyAppColors.greyBlue,
            ),
            child: Row(
              children: [
                SizedBox(width: 8.px),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      subTitle,
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
    );
  }
}

class MessageAndCallButton extends StatelessWidget {
  final VoidCallback onTapMessage;
  final VoidCallback onTapCall;
  const MessageAndCallButton(
      {super.key, required this.onTapMessage, required this.onTapCall});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onTapMessage,
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/message.svg'),
                  SizedBox(width: 1.h),
                  Text(
                    'Message',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.px,
                        color: MyAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 2.h),
        Expanded(
          child: GestureDetector(
            onTap: onTapCall,
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/call.svg'),
                  SizedBox(width: 1.h),
                  Text(
                    'Call',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.px,
                        color: MyAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
