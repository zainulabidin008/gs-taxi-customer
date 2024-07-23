import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Message',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.px,
              color: MyAppColors.primaryColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.px),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40.px,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.px),
                          bottomRight: Radius.circular(8.px),
                          bottomLeft: Radius.circular(8.px),
                        ),
                        color: MyAppColors.primaryColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.px),
                        child: Center(
                          child: Text(
                            'Where are you',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.px,
                                color: MyAppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.px,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.px),
                          bottomRight: Radius.circular(8.px),
                          bottomLeft: Radius.circular(8.px),
                        ),
                        color: MyAppColors.greyBlue,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.px),
                        child: Center(
                          child: Text(
                            'Where are you',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.px,
                                color: MyAppColors.subtitle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40.px,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.px),
                          bottomRight: Radius.circular(8.px),
                          bottomLeft: Radius.circular(8.px),
                        ),
                        color: MyAppColors.primaryColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.px),
                        child: Center(
                          child: Text(
                            'I am waiting',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.px,
                                color: MyAppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40.px,
                    child: TextFormField(
                      // cursorHeight: 2.h,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 4.5.h, horizontal: 2.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.px),
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 1.h),
                Container(
                  width: 8.h,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.px),
                    color: MyAppColors.primaryColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/icons/send-icon.svg'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
