import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/utils.dart';
import 'package:my_portfolio/app/data/theme_data/theme_controller.dart';

class HomeView extends GetView<ThemeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.isMobile
            ? Scaffold(
                backgroundColor: Theme.of(context).backgroundColor,
                body: Center(
                  child: GetBuilder<ThemeController>(
                    builder: (_) {
                      return Switch(
                        value: controller.isDarkMode,
                        onChanged: (value) {
                          _.toggleDarkMode();
                        },
                      );
                    },
                  ),
                ),
              )
            : Scaffold(
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
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.2)),
                      ),
                    ),
                    Positioned(
                      top: 580.h,
                      left: 320.w,
                      child: Column(
                        children: [
                          Text(
                            "Follow Me !!!",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.instagram,
                                color: Theme.of(context).primaryColorLight,
                              ),
                              Icon(
                                FontAwesomeIcons.linkedinIn,
                                color: Theme.of(context).primaryColorLight,
                              ),
                              Icon(
                                FontAwesomeIcons.github,
                                color: Theme.of(context).primaryColorLight,
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
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              Spacer(),
                              GetBuilder<ThemeController>(
                                builder: (_) {
                                  return Switch(
                                    value: controller.isDarkMode,
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
      },
    );
  }
}
