import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../parcel_delivery/profile_screen.dart';
import '../parcel_delivery/trip_history_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width / 1.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  SvgPicture.asset('assets/images/gs-taxi.svg'),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgPicture.asset('assets/icons/close-drawer.svg'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset('assets/images/Ellipse 7.png'),
                  ),
                  // SizedBox(width: 10.px),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.px),
                        child: Text(
                          'Mohsin',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.px,
                              color: MyAppColors.subtitle,
                            ),
                          ),
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15.0,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.px),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                      Get.to(() => ProfileScreen());
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              DrawerTile(
                title: 'Trip history',
                onTap: () {
                  Get.back();
                  Get.to(() => TripHistoryScreen());
                },
              ),
              DrawerTile(
                title: 'Payment methods',
                onTap: () {},
              ),
              DrawerTile(
                title: 'Support',
                onTap: () {},
              ),
              DrawerTile(
                title: 'Privacy Policy',
                onTap: () {},
              ),
              DrawerTile(
                title: 'Logout',
                redColor: true.obs,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final RxBool? redColor;
  const DrawerTile(
      {super.key, required this.title, required this.onTap, this.redColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.px, vertical: 8.px),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.px,
                    color: redColor?.value == true
                        ? MyAppColors.red
                        : MyAppColors.subtitle,
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Divider(
                thickness: 0.1,
                height: 1.px,
                color: MyAppColors.hintColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
