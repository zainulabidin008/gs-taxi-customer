import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/food_delivery/resturant_menu/resturant_menu_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../custom_widgets/food_delivery/food_section.dart';
import 'cart_screen.dart';

class RestaurantScreen extends StatelessWidget {
  RestaurantScreen({super.key});
  RxList items = [
    'Deals',
    'Drink',
    'Burger',
    'Pizza',
  ].obs;

  final BurgerController controller = BurgerController();

  RxInt isSelected = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Belmond Copacabana',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.px,
              color: MyAppColors.subtitle,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(CartScreen(controller: controller));
              },
              child: SvgPicture.asset('assets/icons/solar_cart-linear.svg'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.px),
        child: Obx(
          () => Column(
            children: [
              const FoodCustomTextFormField(
                hintText: 'Search restaurant',
              ),
              SizedBox(height: 2.h),
              SizedBox(
                height: 55,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.px, vertical: 8.px),
                      child: Obx(
                        () => GestureDetector(
                          onTap: () {
                            isSelected.value = index;
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(37.px),
                              color: isSelected == index
                                  ? MyAppColors.primaryColor
                                  : MyAppColors.white,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: isSelected == index
                                          ? FontWeight.w600
                                          : FontWeight.w400,
                                      fontSize: 12.px,
                                      color: isSelected == index
                                          ? MyAppColors.white
                                          : MyAppColors.hintColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 2.h),
              isSelected == 0
                  ? Container()
                  : isSelected == 1
                      ? Container()
                      : isSelected == 2
                          ? Burgers(
                              controller: controller,
                            )
                          : isSelected == 3
                              ? Container()
                              : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
