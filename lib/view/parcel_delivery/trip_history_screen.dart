import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_taxi/view/parcel_delivery/trip_recipt_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../custom_widgets/parcal_delivery/parcel_delivery.dart';

class TripHistoryScreen extends StatelessWidget {
  const TripHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        title: Text(
          'Trip History',
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
        child: ListView(
          children: [
            DotedLocationWidget(
              date: '6 April',
              time: ' 10:00AM',
              price: '10.84',
              from: 'Johar town ,lahore',
              to: 'Salamatpura, Lahore',
              onTap: () {
                Get.to(() => TripReciptScreen());
              },
              checkArrive: true.obs,
            ),
            DotedLocationWidget(
              date: '6 April',
              time: ' 10:00AM',
              price: '10.84',
              from: 'Johar town ,lahore',
              to: 'Salamatpura, Lahore',
              onTap: () {},
              checkArrive: false.obs,
            ),
            DotedLocationWidget(
              date: '4 April',
              time: ' 5:35AM',
              price: '10.84',
              from: 'Johar town ,lahore',
              to: 'Salamatpura, Lahore',
              onTap: () {},
              checkArrive: true.obs,
            ),
            DotedLocationWidget(
              date: '1 April',
              time: ' 12:00PM',
              price: '10.84',
              from: 'Johar town ,lahore',
              to: 'Salamatpura, Lahore',
              onTap: () {},
              checkArrive: false.obs,
            ),
          ],
        ),
      ),
    );
  }
}
