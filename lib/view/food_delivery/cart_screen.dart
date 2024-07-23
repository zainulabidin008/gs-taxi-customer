import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/custom_widgets/gs_taxi.dart';
import 'package:gs_taxi/view/food_delivery/resturant_menu/resturant_menu_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_colors/app_colors.dart';
import '../custom_widgets/ride/ride.dart';
import 'bottomsheets/food_bootomsheets.dart';

class CartScreen extends StatelessWidget {
  final BurgerController controller;
  CartScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    log('message: ${controller.selectedItems.length}');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
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
            Row(
              children: [
                Text(
                  'Food items',
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
            ListView.builder(
              itemCount: controller.selectedItems.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                FoodItem foodItem = controller.selectedItems[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.px),
                  child: Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 3.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              foodItem.image,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.px),
                      Text(
                        foodItem.name,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.px,
                            color: MyAppColors.subtitle,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$${foodItem.price.toStringAsFixed(2)}',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.px,
                            color: MyAppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(width: 2.h),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                            'assets/icons/akar-icons_minus.svg'),
                      ),
                      SizedBox(width: 1.h),
                      Text('1'),
                      SizedBox(width: 1.h),
                      GestureDetector(
                        onTap: () {},
                        child:
                            SvgPicture.asset('assets/icons/ic_round-add.svg'),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 1.h),
            Divider(
              thickness: 0.3,
              height: 1.px,
              color: MyAppColors.hintColor,
            ),
            SizedBox(height: 1.h),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(width: 2.h),
                Text(
                  'Cheese burger',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '\$5.49',
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
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                SizedBox(width: 2.h),
                Text(
                  'Zinger burger',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '\$10.99',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.px,
                      color: MyAppColors.black,
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
                  'Total',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Text(
                  '\$10.99',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.px,
                      color: MyAppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Divider(
              thickness: 0.3,
              height: 1.px,
              color: MyAppColors.hintColor,
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Text(
                  'Pickup',
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
            SizedBox(height: 2.h),
            const DestinationLocation(
              icon: 'assets/icons/octicon_dot-16.svg',
              title: 'Rd. Allentown',
              subTitle: '1901 Thornridge Cir. Shiloh',
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Text(
                  'Delivery location',
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
            SizedBox(height: 2.h),
            const DestinationLocation(
              icon: 'assets/icons/suggestion-location.svg',
              title: 'Rd. Allentown',
              subTitle: '1901 Thornridge Cir. Shiloh',
            ),
            Spacer(),
            CustomButton(
                title: 'Confirm Food Delivery',
                onTap: () {
                  FoodBottomSheets.deliveryLocationBottomSheet();
                }),
          ],
        ),
      ),
    );
  }
}
