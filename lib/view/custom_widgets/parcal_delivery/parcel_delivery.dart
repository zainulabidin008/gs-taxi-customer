import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../app_colors/app_colors.dart';

class DotedLocationWidget extends StatelessWidget {
  final String date, time, price, to, from;
  final VoidCallback onTap;
  final RxBool checkArrive;
  const DotedLocationWidget(
      {super.key,
      required this.date,
      required this.time,
      required this.price,
      required this.to,
      required this.from,
      required this.onTap,
      required this.checkArrive});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${date}, ${time}',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.px,
                    color: MyAppColors.subtitle,
                  ),
                ),
              ),
              Text(
                "\$${price}",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
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
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/octicon_dot-16.svg',
                    height: 20.px,
                    width: 20.px,
                  ),
                  // Container(
                  //   height: 6.px,
                  //   width: 2,
                  //   color: MyAppColors.hintColor,
                  // ),
                  // SizedBox(height: 2),
                  // Container(
                  //   height: 6.px,
                  //   width: 2,
                  //   color: MyAppColors.hintColor,
                  // ),
                  // SizedBox(height: 2),
                  Container(
                    height: 6.px,
                    width: 2,
                    color: MyAppColors.hintColor,
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 6.px,
                    width: 2,
                    color: MyAppColors.hintColor,
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 6.px,
                    width: 2,
                    color: MyAppColors.hintColor,
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 6.px,
                    width: 2,
                    color: MyAppColors.hintColor,
                  ),
                  SvgPicture.asset(
                    'assets/icons/suggestion-location.svg',
                    color:
                        checkArrive.value ? MyAppColors.green : MyAppColors.red,
                    height: 20.px,
                    width: 20.px,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 11.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.px),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              from,
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.px,
                                  color: MyAppColors.subtitle,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  checkArrive.value ? 'Completed' : 'Cancelled',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.px,
                                      color: checkArrive.value
                                          ? MyAppColors.green
                                          : MyAppColors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              to,
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Divider(
            thickness: 0.2,
            height: 1.px,
            color: MyAppColors.hintColor,
          ),
          SizedBox(height: 1.5.h),
        ],
      ),
    );
  }
}

class CustomTripTile extends StatelessWidget {
  final String min, km;
  const CustomTripTile({super.key, required this.min, required this.km});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total time',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.px,
                  color: MyAppColors.subtitle,
                ),
              ),
            ),
            Text(
              min,
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
        SizedBox(height: 1.h),
        Divider(
          thickness: 0.2,
          height: 1.px,
          color: MyAppColors.hintColor,
        ),
        SizedBox(height: 1.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Distance',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.px,
                  color: MyAppColors.subtitle,
                ),
              ),
            ),
            Text(
              km,
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
      ],
    );
  }
}
