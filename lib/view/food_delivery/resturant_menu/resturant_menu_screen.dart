import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/custom_widgets/utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../app_colors/app_colors.dart';

class Burgers extends StatelessWidget {
  final BurgerController controller;
  Burgers({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: controller.foodItems.length,
        itemBuilder: (context, index) {
          FoodItem foodItem = controller.foodItems[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 4.px, horizontal: 4.px),
            child: GestureDetector(
              onTap: () {
                controller.addItem(foodItem);
                customScaffoldMessenger(context, 'added in to cart');
                log("selectedItems: ${controller.selectedItems.length}");
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.px),
                  color: MyAppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 5.h,
                        width: 5.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              foodItem.image,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.px),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amets',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.px,
                                color: MyAppColors.subtitle,
                              ),
                            ),
                          ),
                          Text(
                            'Lorem ipsum',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.px,
                                color: MyAppColors.greyDark,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        '\$5.49',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.px,
                            color: MyAppColors.primaryColor,
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
    );
  }
}

class BurgerController extends GetxController {
  final RxList<FoodItem> foodItems = <FoodItem>[
    FoodItem(
      image:
          'https://hips.hearstapps.com/hmg-prod/images/french-bread-pizza1-1659562567.jpg?crop=0.842xw:0.842xh;0.0349xw,0.0836xh&resize=980:*',
      name: 'Burger',
      price: 5.99,
    ),
    FoodItem(
      image:
          'https://nomadparadise.com/wp-content/uploads/2021/03/pakistani-food-018.jpg',
      name: 'Pizza',
      price: 8.99,
    ),
    FoodItem(
      image:
          'https://nomadparadise.com/wp-content/uploads/2021/03/pakistani-food-018.jpg',
      name: 'Pasta',
      price: 10.49,
    ),
    // Add more food items as needed
  ].obs;
  final RxList<FoodItem> selectedItems = <FoodItem>[].obs;

  void addItem(FoodItem item) {
    selectedItems.add(item);
  }
}

class FoodItem {
  final String image;
  final String name;
  final double price;

  FoodItem({required this.image, required this.name, required this.price});
}
