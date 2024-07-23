import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../app_colors/app_colors.dart';
import '../ride/bottom_sheets/bottom_sheets.dart';

class AnimatedGradientContainer extends StatefulWidget {
  @override
  _AnimatedGradientContainerState createState() =>
      _AnimatedGradientContainerState();
}

class _AnimatedGradientContainerState extends State<AnimatedGradientContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Change duration to 2 seconds
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _controller,
          curve: Curves.linear,
          reverseCurve: Curves.linear),
      // CurvedAnimation(
      //   parent: _controller,
      //   curve: Curves.ease,
      //   reverseCurve: Curves.easeOut,
      // ),
    );

    _controller.addListener(() {
      setState(() {}); // Trigger a rebuild
    });

    // Add a status listener to restart the animation when it completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.forward(from: 0.0); // Restart animation from the beginning
      }
    });

    _controller.forward(); // Start the animation
    Future.delayed(const Duration(seconds: 3), () {
      Get.back();
      RideBottomSheets.arriveBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5.px,
          width: Get.width * 0.6,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                MyAppColors.primaryColor
                    .withOpacity(0.0), // White color at the beginning
                MyAppColors.primaryColor, // Blue color in the center
                MyAppColors.primaryColor
                    .withOpacity(0.0), // White color at the end
              ],
              stops: [
                (_animation.value - 0.5).clamp(0.0, 1.0),
                _animation.value.clamp(0.0, 2.0),
                (_animation.value + 0.5).clamp(0.0, 1.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
