import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/data/theme_data/theme_controller.dart';
import 'package:my_portfolio/app/modules/home/controllers/home_controller.dart';

class CustomTabBar extends StatelessWidget {
  CustomTabBar({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 210.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) {
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeHomeHover(true);
                  },
                  onExit: (e) {
                    controller.changeHomeHover(false);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        controller.homeHover
                            ? BoxShadow(
                                color: Color.fromARGB(255, 154, 5, 52),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                            : BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.house,
                              color: Color.fromARGB(255, 212, 1, 71)
                                  .withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Home",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: Colors.black,
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
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeProjectHover(true);
                  },
                  onExit: (e) {
                    controller.changeProjectHover(false);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        controller.projectHover
                            ? BoxShadow(
                                color: Color.fromARGB(255, 154, 5, 52),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                            : BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.star,
                              color: Color.fromARGB(255, 212, 1, 71)
                                  .withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Projects",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: Colors.black,
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
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onHover: (h) {
                    controller.changeBuyMeaCoffeeHover(true);
                  },
                  onExit: (e) {
                    controller.changeBuyMeaCoffeeHover(false);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        controller.buyMeACoffeeHover
                            ? BoxShadow(
                                color: Color.fromARGB(255, 154, 5, 52),
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                            : BoxShadow(
                                color: Colors.transparent,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              )
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              FontAwesomeIcons.coffee,
                              color: Color.fromARGB(255, 212, 1, 71)
                                  .withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Buy me a Coffee",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: Colors.black,
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
      ),
    );
  }
}
