import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../animations/animation.dart';
import '../../app_colors/app_colors.dart';
import '../../custom_widgets/gs_taxi.dart';
import '../../custom_widgets/ride/ride.dart';
import '../messages_screen.dart';

class RideBottomSheets {
  static void goingToOpenBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 80.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      'Going To',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/close-light.svg'),
                  ],
                ),
                SizedBox(height: 3.4.h),
                const CustomMapTextFormField(
                  hintText: 'Where you want to go ?',
                ),
                SizedBox(height: 2.6.h),
                ChooseOnMap(
                  trailing: 'Favorite',
                  onTapMap: () {},
                ),
                SizedBox(height: 2.6.h),
                SizedBox(
                  height: 43.h,
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 12.px),
                          SuggestionPlaces(
                            title: 'Home',
                            subTitle: '1901 Thornridge Cir. Shiloh',
                            onTap: () {},
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.h),
                CustomButton(
                    title: 'Next',
                    onTap: () {
                      Get.back();
                      confirmDestinationBottomSheet();
                    }),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void confirmDestinationBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 25.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Destination',
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
                SizedBox(height: 2.2.h),
                const DestinationLocation(
                  icon: 'assets/icons/suggestion-location.svg',
                  title: 'Rd. Allentown',
                  subTitle: '1901 Thornridge Cir. Shiloh',
                ),
                SizedBox(height: 2.2.h),
                CustomButton(
                    title: 'Confirm Destination ',
                    onTap: () {
                      Get.back();
                      pickupspotBottomSheet();
                    }),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void pickupspotBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 80.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      'Pick-up sport',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/close-light.svg'),
                  ],
                ),
                SizedBox(height: 3.4.h),
                const CustomMapTextFormField(
                  hintText: 'Choose pick-up sport',
                ),
                SizedBox(height: 2.6.h),
                ChooseOnMap(
                  trailing: 'Favorite',
                  onTapMap: () {},
                ),
                SizedBox(height: 2.6.h),
                SizedBox(
                  height: 43.h,
                  child: ListView.builder(
                    itemCount: 2,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(height: 12.px),
                          SuggestionPlaces(
                            title: 'Rd. Allentown',
                            subTitle: '1901 Thornridge Cir. Shiloh',
                            onTap: () {},
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.h),
                CustomButton(
                    title: 'Next',
                    onTap: () {
                      Get.back();
                      confirmPickupSpotBottomSheet();
                    }),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void confirmPickupSpotBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 25.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Pick-up Spot',
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
                SizedBox(height: 2.2.h),
                const DestinationLocation(
                  icon: 'assets/icons/octicon_dot-16.svg',
                  title: 'Rd. Allentown',
                  subTitle: '1901 Thornridge Cir. Shiloh',
                ),
                SizedBox(height: 2.2.h),
                CustomButton(
                    title: 'Confirm Pick-up',
                    onTap: () {
                      Get.back();
                      rideRouteBottomSheet();
                    }),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void rideRouteBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 40.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ride route',
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Pickup',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                const DestinationLocation(
                  icon: 'assets/icons/octicon_dot-16.svg',
                  title: 'Rd. Allentown',
                  subTitle: '1901 Thornridge Cir. Shiloh',
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Destination',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                const DestinationLocation(
                  icon: 'assets/icons/suggestion-location.svg',
                  title: 'Rd. Allentown',
                  subTitle: '1901 Thornridge Cir. Shiloh',
                ),
                SizedBox(height: 3.h),
                CustomButton(
                  title: 'Confirm Pick-up',
                  onTap: () {
                    Get.back();
                    orderRideRouteBottomSheet();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void orderRideRouteBottomSheet() {
    List<Map<String, dynamic>> productList = [
      {
        'image': 'assets/images/cars/standard-car.svg',
        'category': 'Standord',
        'price': '\$10',
      },
      {
        'image': 'assets/images/cars/comfort-car.svg',
        'category': 'Comfort',
        'price': '\$20',
      },
      {
        'image': 'assets/images/cars/van-car.svg',
        'category': 'Van',
        'price': '\$20',
      },
      {
        'image': 'assets/images/cars/standard-car.svg',
        'category': 'Sport',
        'price': '\$40',
      },
      // Add more products as needed
    ];
    RxInt isSelected = 0.obs;
    Get.bottomSheet(
      SizedBox(
        height: 53.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ride route',
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
                          height: 20.px,
                          width: 20.px,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                          SizedBox(height: 2.h),
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Payment method',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.px,
                            color: MyAppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/images/cash.svg'),
                  ],
                ),
                SizedBox(height: 2.h),
                Container(
                  height: 12.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.px),
                    color: MyAppColors.greyLight,
                  ),
                  child: ListView.builder(
                    itemCount: productList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> productData = productList[index];
                      String image = productData['image'];
                      String category = productData['category'];
                      String price = productData['price'];
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            isSelected.value = index;
                          },
                          child: Padding(
                            padding: EdgeInsets.all(4.px),
                            child: Container(
                              height: 11.h,
                              width: 11.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.px),
                                color: isSelected.value == index
                                    ? MyAppColors.greyLight
                                    : MyAppColors.white,
                                border: Border.all(
                                    width: 2.px,
                                    color: isSelected.value == index
                                        ? MyAppColors.primaryColor
                                        : MyAppColors.white),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(image),
                                  Text(
                                    category,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.px,
                                        color: isSelected.value == index
                                            ? MyAppColors.primaryColor
                                            : MyAppColors.greyBlack,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    price,
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
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 3.3.h),
                CustomButton(
                  title: 'Order ride',
                  onTap: () {
                    Get.back();
                    paymentMethodBottomSheet();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void paymentMethodBottomSheet() {
    List<Map<String, dynamic>> paymentMethod = [
      {
        'payment': 'Cash',
        'Method': 'Pay with cash',
      },
      {
        'payment': 'Wallet',
        'Method': 'Pay with app wallet',
      },
      {
        'payment': 'Credit card',
        'Method': 'Pay with card',
      },
      {
        'payment': 'Moov Money',
        'Method': 'Pay with E-wallet',
      },
      {
        'payment': 'Mobile Money',
        'Method': 'Pay with E-wallet',
      },
    ];
    RxInt isCheck = 0.obs;
    Get.bottomSheet(
      SizedBox(
        height: 55.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        'assets/icons/arrow-back-ios.svg',
                        width: 18.px,
                        height: 18.px,
                      ),
                    ),
                    Text(
                      'Payment method',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(''),
                  ],
                ),
                SizedBox(height: 2.h),
                // ListView.builder(
                //   shrinkWrap: true,
                //   // physics: const ScrollPhysics(),
                //   itemBuilder: (context, index) {
                //     return Container(
                //       height: 20.px,
                //       width: 20.px,
                //       color: MyAppColors.subtitle,
                //     );
                //   },
                // ),
                SizedBox(
                  height: 27.h,
                  child: ListView.builder(
                    itemCount: paymentMethod.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> paymentMethodData =
                          paymentMethod[index];
                      String payment = paymentMethodData['payment'];
                      String method = paymentMethodData['Method'];
                      return Obx(
                        () => GestureDetector(
                          onTap: () {
                            isCheck.value = index;
                          },
                          child: Padding(
                            padding: EdgeInsets.all(4.px),
                            child: Row(
                              children: [
                                Container(
                                  height: 25.px,
                                  width: 25.px,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.px),
                                    color: MyAppColors.greyBlack,
                                  ),
                                  child: Center(
                                    child: isCheck.value == index
                                        ? Container(
                                            height: 20.px,
                                            width: 20.px,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.px),
                                              color: MyAppColors.white,
                                            ),
                                            child: SvgPicture.asset(
                                              'assets/icons/icon-park-solid_check-one.svg',
                                            ),
                                          )
                                        : Container(
                                            height: 20.px,
                                            width: 20.px,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30.px),
                                              color: MyAppColors.white,
                                            ),
                                          ),
                                  ),
                                ),
                                SizedBox(width: 1.5.h),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      payment,
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      method,
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
                      );
                    },
                  ),
                ),
                SizedBox(height: 4.px),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(4.px),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/images/debit-cards.svg'),
                        SizedBox(width: 1.5.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Add Card',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.px,
                                  color: MyAppColors.subtitle,
                                ),
                              ),
                            ),
                            Text(
                              'Add Card details',
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
                SizedBox(height: 3.h),
                CustomButton(
                  title: 'Confirm Pick-up',
                  onTap: () {
                    Get.back();
                    findDriverBottomSheet();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void findDriverBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 25.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  'Looking to find a driver?',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Comparing available cars to find the best fit.',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.hintColor,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                AnimatedGradientContainer(),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void arriveBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 61.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  'Will arrive in 2 minutes',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
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
                SizedBox(width: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Silver Mercedes',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 1.h),
                    Container(
                      height: 30.px,
                      // width: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.px),
                        color: MyAppColors.greyBlue,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.px),
                          child: Text(
                            '9JGO895',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.px,
                                color: MyAppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.h),
                MessageAndCallButton(
                  onTapMessage: () {
                    Get.to(() => MessagesScreen());
                  },
                  onTapCall: () {
                    Get.back();
                    waitingBottomSheet();
                  },
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ride route',
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
                          height: 20.px,
                          width: 20.px,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                          SizedBox(height: 2.h),
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Payment method',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.px,
                            color: MyAppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/images/cash.svg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void waitingBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 61.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  'Waiting for you 10:52',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.px,
                      color: MyAppColors.red,
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Image.asset('assets/images/Ellipse 7.png'),
                    ),
                    SizedBox(width: 0.5.h),
                    Text(
                      'Mohsin',
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
                SizedBox(width: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Silver Mercedes',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 1.h),
                    Container(
                      height: 30.px,
                      // width: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.px),
                        color: MyAppColors.greyBlue,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.px),
                          child: Text(
                            '9JGO895',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.px,
                                color: MyAppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 5.h),
                MessageAndCallButton(
                  onTapMessage: () {
                    Get.to(() => MessagesScreen());
                  },
                  onTapCall: () {
                    Get.back();
                    reasonForCancelRideBottomSheet();
                  },
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ride route',
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
                          height: 20.px,
                          width: 20.px,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                          SizedBox(height: 2.h),
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Payment method',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.px,
                            color: MyAppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/images/cash.svg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void reasonForCancelRideBottomSheet() {
    List<String> reasons = [
      'Delayed arrival',
      'Change of plans',
      'Personal reasons',
      'Incorrect pickup location',
      'Emergency situation',
      'Destination changed',
      'Found alternative transportation',
      'Others',
    ];
    RxInt isSelected = 0.obs;
    Get.bottomSheet(
      SizedBox(
        height: 59.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Reasons for cancel ride',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: reasons.length,
                  itemBuilder: (context, index) {
                    final reaon = reasons[index];
                    return Obx(
                      () => Padding(
                        padding: EdgeInsets.all(6.px),
                        child: GestureDetector(
                          onTap: () {
                            isSelected.value = index;
                          },
                          child: Container(
                            height: 26.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                ),
                              ],
                              border: Border.all(
                                  width: 1.px,
                                  color: isSelected.value == index
                                      ? MyAppColors.primaryColor
                                      : Colors.transparent),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.px),
                                  child: Text(
                                    reaon,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.px,
                                          color: isSelected.value == index
                                              ? MyAppColors.primaryColor
                                              : MyAppColors.greyDark),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            color: MyAppColors.white,
                            border: Border.all(
                                color: MyAppColors.subtitle, width: 1.px),
                          ),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.px,
                                  color: MyAppColors.subtitle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.h),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                          tripStartedBottomSheet();
                        },
                        child: Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            color: MyAppColors.primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.px,
                                  color: MyAppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void tripStartedBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 64.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  'Trip has started',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset('assets/images/Ellipse 7.png'),
                            ),
                            SizedBox(width: 0.5.h),
                            Text(
                              'Mohsin',
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
                        Text(
                          'Silver Mercedes',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.px,
                              color: MyAppColors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Container(
                          height: 30.px,
                          // width: 10.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            color: MyAppColors.greyBlue,
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.px),
                              child: Text(
                                '9JGO895',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.px,
                                    color: MyAppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            // color: MyAppColors.primaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/share.svg'),
                              SizedBox(width: 1.h),
                              Text(
                                'Share',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.px,
                                    color: MyAppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            // color: MyAppColors.primaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/ion_navigate.svg'),
                              SizedBox(width: 1.h),
                              Text(
                                'Navigate',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.px,
                                    color: MyAppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                MessageAndCallButton(
                  onTapMessage: () {
                    Get.back();
                    Get.to(() => MessagesScreen());
                  },
                  onTapCall: () {
                    Get.back();
                    rideCompleteBottomSheet();
                  },
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Ride route',
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
                          height: 20.px,
                          width: 20.px,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                          SizedBox(height: 2.h),
                          Container(
                            height: 45.px,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.px),
                              color: MyAppColors.greyBlue,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 8.px),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rd. Allentown',
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.px,
                                          color: MyAppColors.subtitle,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '1901 Thornridge Cir. Shiloh',
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
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Payment method',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.px,
                            color: MyAppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/images/cash.svg'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void rideCompleteBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 64.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Trip has started',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
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
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ride fare',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      '245',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Waiting',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      '45',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.h),
                Divider(
                  thickness: 0.1,
                  height: 1.px,
                  color: MyAppColors.hintColor,
                ),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Charges',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    Text(
                      '290',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.px,
                          color: MyAppColors.black,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 3.h),
                GestureDetector(
                  onTap: () {
                    Get.back();
                    reviewBottomSheet();
                  },
                  child: Container(
                    height: 5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.px),
                      color: MyAppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
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
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }

  static void reviewBottomSheet() {
    Get.bottomSheet(
      SizedBox(
        height: 60.h,
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Review',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  'Kindly share your feedback by rating the driver.',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.greyDark,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                CircleAvatar(
                  radius: 30,
                  child: Image.asset('assets/images/Ellipse 7.png'),
                ),
                SizedBox(height: 0.5.h),
                Text(
                  'Mohsin',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(height: 3.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.px),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 3, // Blur radius
                        offset: Offset(0, 1), // Offset
                      ),
                    ],
                  ),
                  child: TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Comment',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11.px,
                          color: MyAppColors.greyDark,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.px),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: MyAppColors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            color: MyAppColors.white,
                            border: Border.all(
                                color: MyAppColors.subtitle, width: 1.px),
                          ),
                          child: Center(
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.px,
                                  color: MyAppColors.subtitle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2.h),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 5.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.px),
                            color: MyAppColors.primaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.px,
                                  color: MyAppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.px),
          topLeft: Radius.circular(24.px),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
