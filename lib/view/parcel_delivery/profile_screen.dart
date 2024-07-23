import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
      });
    }
  }

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
          'Profile',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14.px,
              color: MyAppColors.subtitle,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Text(
              'Save',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.px,
                  color: MyAppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.px),
        child: Column(
          children: [
            SizedBox(
              height: 80.px,
              width: 80.px,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: MyAppColors.white,
                  ),
                  _imageFile == null
                      ? Center(
                          child: CircleAvatar(
                            radius: 35.px,
                            backgroundImage:
                                AssetImage('assets/images/Ellipse 7.png'),
                          ),
                        )
                      : Center(
                          child: CircleAvatar(
                            radius: 35.px,
                            backgroundImage: FileImage(
                              _imageFile!,
                            ),
                          ),
                        ),
                  Positioned(
                      right: 0.px,
                      bottom: 25.px,
                      child: GestureDetector(
                          onTap: () {
                            _pickImage();
                          },
                          child: SvgPicture.asset('assets/icons/camera.svg'))),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User ID: ',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.subtitle,
                    ),
                  ),
                ),
                Text(
                  'U5862',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.px,
                      color: MyAppColors.greyDark,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Container(
              height: 30.px,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.greyBlue,
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 32.px, vertical: 6.px),
                child: Text(
                  'Mohsin',
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
            SizedBox(height: 1.h),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 18.0,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.px),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(height: 1.h),
            Text(
              '+92 320 462 6050',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.px,
                  color: MyAppColors.subtitle,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Container(
              height: 30.px,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.px),
                color: MyAppColors.greyBlue,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.px),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reviews ',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.primaryColor,
                        ),
                      ),
                    ),
                    Text(
                      '4/5',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.px,
                          color: MyAppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 32.px,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.px),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Thank for tip',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18.0,
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
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 32.px,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.px),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Great',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18.0,
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
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 32.px,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.px),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Too long waiting',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.px,
                          color: MyAppColors.subtitle,
                        ),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 1,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18.0,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
