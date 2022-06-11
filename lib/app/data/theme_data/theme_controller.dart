import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/data/theme_data/theme_data_shared_prefs.dart';

class ThemeController extends GetxController {
  DarkThemePreference darkThemePreference = DarkThemePreference();

  bool isDarkMode = false;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    darkThemePreference.setDarkTheme(isDarkMode);
    if (isDarkMode) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
    update();
  }

  void sharedCheck() async {
    isDarkMode = (await darkThemePreference.getTheme())!;
    update();
  }

  @override
  void onInit() {
    sharedCheck();
    super.onInit();
  }

  @override
  void onClose() {}
}
