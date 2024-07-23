import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/food_delivery/resturent_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../custom_widgets/food_delivery/food_section.dart';

class FoodDeliveryScreen extends StatelessWidget {
  const FoodDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food delivery',
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
              onTap: () {},
              child: SvgPicture.asset('assets/icons/solar_cart-linear.svg'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(18.px),
        child: Column(
          children: [
            const FoodCustomTextFormField(
              hintText: 'Search restaurant',
            ),
            SizedBox(height: 2.h),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => RestaurantScreen());
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.px, horizontal: 2.px),
                      child: Container(
                        height: 28.h,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.px),
                                topRight: Radius.circular(16.px),
                              ),
                              child: Container(
                                height: 18.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.insider.com/5dc498fc695b58645d6f1dab?width=1200&format=jpeg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.px),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Belmond Copacabana',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.px,
                                        color: MyAppColors.subtitle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Address: Av. Atlântica, 1702',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.px,
                                        color: MyAppColors.lightGrey,
                                      ),
                                    ),
                                  ),
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 18.0,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
