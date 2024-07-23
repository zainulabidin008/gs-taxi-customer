import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_colors/app_colors.dart';
import '../custom_widgets/parcal_delivery/parcel_delivery.dart';

class TripReciptScreen extends StatelessWidget {
  TripReciptScreen({super.key});

  final RxBool checkArrive = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        title: Text(
          '6 April, 10:00AM',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.px,
              color: MyAppColors.subtitle,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.px),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.px),
              child: Container(
                height: 30.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.px),
                  color: MyAppColors.primaryColor,
                ),
                child: GoogleMap(
                  zoomControlsEnabled: false,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(37.7749, -122.4194), // San Francisco
                    zoom: 12,
                  ),
                  markers: {
                    const Marker(
                      markerId: MarkerId('sf'),
                      position: LatLng(37.7749, -122.4194),
                      infoWindow: InfoWindow(title: 'San Francisco'),
                    ),
                  },
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/octicon_dot-16.svg',
                      height: 20.px,
                      width: 20.px,
                    ),
                    Container(
                      height: 6.px,
                      width: 2,
                      color: MyAppColors.hintColor,
                    ),
                    const SizedBox(height: 2),
                    Container(
                      height: 6.px,
                      width: 2,
                      color: MyAppColors.hintColor,
                    ),
                    const SizedBox(height: 2),
                    Container(
                      height: 6.px,
                      width: 2,
                      color: MyAppColors.hintColor,
                    ),
                    const SizedBox(height: 2),
                    Container(
                      height: 6.px,
                      width: 2,
                      color: MyAppColors.hintColor,
                    ),
                    SvgPicture.asset(
                      'assets/icons/suggestion-location.svg',
                      color: checkArrive.value
                          ? MyAppColors.green
                          : MyAppColors.red,
                      height: 20.px,
                      width: 20.px,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                'Johar town ,lahore',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.px,
                                    color: MyAppColors.subtitle,
                                  ),
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                'Salamatpura, Lahore',
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
            SizedBox(height: 2.h),
            const CustomTripTile(
              km: '5.1 km',
              min: '55 min',
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Ride Payment',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ride fare',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Text(
                  '\$45',
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
                  'Waiting chargers',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Text(
                  '\$5',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total chargers',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Text(
                  '\$50',
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
        ),
      ),
    );
  }
}
