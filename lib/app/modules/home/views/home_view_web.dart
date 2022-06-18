import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/data/theme_data/theme_controller.dart';
import 'package:my_portfolio/app/modules/home/controllers/home_controller.dart';

class HomeViewWeb extends GetView<HomeController> {
  HomeViewWeb({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 500.h,
            right: 190.w,
            child: Container(
              height: 300.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 500.h,
            left: 190.w,
            child: Container(
              height: 300.h,
              width: 300.w,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
            ),
          ),
          Positioned(
            top: 580.h,
            left: 315.w,
            child: Column(
              children: [
                Text(
                  "Lets Connect...",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.launchSocialLinks(
                            "https://www.instagram.com/devbathani/");
                      },
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        controller.launchSocialLinks(
                            "https://www.linkedin.com/in/dev-bathani-5b87661ba/");
                      },
                      child: Icon(
                        FontAwesomeIcons.linkedinIn,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    InkWell(
                      onTap: () {
                        controller.launchSocialLinks(
                            "https://www.github.com/devbathani");
                      },
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15.h,
              horizontal: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hey Virus",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Spacer(),
                    GetBuilder<ThemeController>(
                      builder: (_) {
                        return Switch(
                          value: themeController.isDarkMode,
                          onChanged: (value) {
                            _.toggleDarkMode();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
