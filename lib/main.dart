import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gs_taxi/view/app_colors/app_colors.dart';
import 'package:gs_taxi/view/auth/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: MyAppColors.primaryColor),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
