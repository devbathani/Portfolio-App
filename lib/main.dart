import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/data/theme_data/theme_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Virus.dev",
              theme: themeController.isDarkMode
                  ? ThemeData.dark().copyWith(
                      backgroundColor: Colors.black,
                      primaryColor: Colors.pink,
                      primaryColorLight: Colors.white60,
                      textTheme: TextTheme(
                        displayLarge: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        displayMedium: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        displaySmall: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        headlineLarge: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        headlineMedium: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : ThemeData.light().copyWith(
                      backgroundColor: Colors.white,
                      primaryColor: Colors.cyanAccent,
                      primaryColorLight: Colors.black54,
                      textTheme: TextTheme(
                        displayLarge: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        displayMedium: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        displaySmall: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        headlineLarge: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        headlineMedium: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            );
          },
        );
      },
    );
  }
}
