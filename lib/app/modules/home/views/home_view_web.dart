import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/data/theme_data/theme_controller.dart';
import 'package:my_portfolio/app/modules/home/controllers/home_controller.dart';
import 'package:my_portfolio/app/modules/home/views/widgets/custom_tabbar.dart';
import 'package:my_portfolio/app/modules/home/views/widgets/floating_containers.dart';

class HomeViewWeb extends GetView<HomeController> {
  HomeViewWeb({Key? key}) : super(key: key);

  final themeController = Get.put(ThemeController());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
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
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
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
          Positioned(
            top: 100.h,
            right: 105.w,
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeRedHover(true);
                  },
                  onExit: (e) {
                    controller.changeRedHover(false);
                  },
                  child: Container(
                    height: 105.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(
                        0.35,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                      border: controller.redHover
                          ? Border.all(color: Colors.red, width: 0.6.w)
                          : Border.all(color: Colors.transparent, width: 0.6.w),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BIOGRAPHY",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 68.w,
                            child: Text(
                              "Work for money and code for love!. I am DEV, a Flutter Developer based in India",
                              style: Theme.of(context).textTheme.bodyMedium,
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
          GetBuilder<HomeController>(
            builder: (controller) {
              return Positioned(
                top: 300.h,
                right: 105.w,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeOrangeHover(true);
                  },
                  onExit: (e) {
                    controller.changeOrangeHover(false);
                  },
                  child: Container(
                    height: 105.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(
                        0.35,
                      ),
                      border: controller.orangeHover
                          ? Border.all(color: Colors.orange, width: 0.6.w)
                          : Border.all(color: Colors.transparent, width: 0.6.w),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SERVICE",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 68.w,
                            child: Text(
                              "Mobile Applications, Web Applications, Websites and Designing",
                              style: Theme.of(context).textTheme.bodyMedium,
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
          GetBuilder<HomeController>(
            builder: (controller) {
              return Positioned(
                top: 500.h,
                right: 105.w,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeYellowHover(true);
                  },
                  onExit: (e) {
                    controller.changeYellowHover(false);
                  },
                  child: Container(
                    height: 105.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.yellow.withOpacity(
                        0.35,
                      ),
                      border: controller.yellowHover
                          ? Border.all(color: Colors.yellow, width: 0.6.w)
                          : Border.all(color: Colors.transparent, width: 0.6.w),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CONTACT",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 50.w,
                            child: Text(
                              "Vadodara, India bathanid888@gmail.com  +91 7202897611",
                              style: Theme.of(context).textTheme.bodyMedium,
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
          GetBuilder<HomeController>(
            builder: (controller) {
              return Positioned(
                top: 300.h,
                right: 15.w,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeGreenHover(true);
                  },
                  onExit: (e) {
                    controller.changeGreenHover(false);
                  },
                  child: Container(
                    height: 105.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(
                        0.35,
                      ),
                      border: controller.greenHover
                          ? Border.all(color: Colors.green, width: 0.6.w)
                          : Border.all(color: Colors.transparent, width: 0.6.w),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "YEARS OF EXPERIENCE",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "2",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          GetBuilder<HomeController>(
            builder: (controller) {
              return Positioned(
                top: 100.h,
                right: 15.w,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeBlueHover(true);
                  },
                  onExit: (e) {
                    controller.changeBlueHover(false);
                  },
                  child: Container(
                    height: 105.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(
                        0.35,
                      ),
                      border: controller.blueHover
                          ? Border.all(color: Colors.blue, width: 0.6.w)
                          : Border.all(color: Colors.transparent, width: 0.6.w),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "PROJECTS DONE",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "40+",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 150.w,
            color: Color.fromARGB(255, 114, 0, 38).withOpacity(0.5),
          ),
          Positioned(
            top: 150.h,
            right: 140.w,
            child: Container(
              height: 300.h,
              width: 300.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(
                  0.15,
                ),
              ),
            ),
          ),
          Positioned(
            top: 200.h,
            left: 20.w,
            child: Column(
              children: [
                Image.asset(
                  "assets/dev.png",
                  fit: BoxFit.cover,
                  height: 500.h,
                  width: 100.w,
                ),
              ],
            ),
          ),
          Positioned(
            top: 35.h,
            left: 30.w,
            child: Text(
              "Dev Bathani",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Positioned(
            top: 300.h,
            left: 0.w,
            child: FloatingContainer(
              assetName: "assets/logos/flutter.png",
            ),
          ),
          Positioned(
            top: 440.h,
            left: 10.w,
            child: FloatingContainer(
              assetName: "assets/logos/dart.png",
            ),
          ),
          Positioned(
            top: 300.h,
            left: 95.w,
            child: FloatingContainer(
              assetName: "assets/logos/figma.png",
            ),
          ),
          Positioned(
            top: 450.h,
            left: 70.w,
            child: FloatingContainer(
              assetName: "assets/logos/firebase.png",
            ),
          ),
          Positioned(
            top: 0.h,
            right: 0.w,
            child: CustomTabBar(),
          ),
        ],
      ),
    );
  }
}
