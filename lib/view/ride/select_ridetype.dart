import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:gs_taxi/view/parcel_delivery/parcel_bottom_sheets.dart';
import 'package:gs_taxi/view/ride/bottom_sheets/bottom_sheets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../custom_widgets/drawr.dart';
import '../custom_widgets/ride/ride.dart';
import '../food_delivery/food_delivery.dart';

class SelectRideTypeScreen extends StatelessWidget {
  SelectRideTypeScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
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
            Positioned(
              bottom: 23.5.h,
              right: 3.h,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 4.h,
                  width: 4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    color: MyAppColors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/current-location.svg',
                    height: 2.h,
                    width: 2.h,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 3.h,
              left: 3.h,
              child: GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                child: Container(
                  height: 4.h,
                  width: 4.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    color: MyAppColors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/icon_1.svg',
                    height: 2.h,
                    width: 2.h,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: Get.width,
                height: 20.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24.px),
                    topRight: Radius.circular(24.px),
                  ),
                  color: MyAppColors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(18.px),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            'Select Ride Type',
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
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectRideWidget(
                            title: 'Ride',
                            image: 'assets/images/select-car-ride.svg',
                            onTap: () {
                              // RideBottomSheets.goingToOpenBottomSheet();
                              RideBottomSheets.goingToOpenBottomSheet();
                            },
                          ),
                          SelectRideWidget(
                            title: 'Food delivery',
                            image: 'assets/images/select-food-delivery.svg',
                            onTap: () {
                              Get.to(() => const FoodDeliveryScreen());
                            },
                          ),
                          SelectRideWidget(
                            title: 'Parcel delivery',
                            image: 'assets/images/select-parcel-delivery.svg',
                            onTap: () {
                              ParcelBottomSheets.parcelOpenBottomSheet();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
