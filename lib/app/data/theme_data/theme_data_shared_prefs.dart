import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  static const THEME_STATUS = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
    log('written');
  }

  Future<bool?> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    log('${prefs.getBool(THEME_STATUS)}');
    return prefs.getBool(THEME_STATUS);
  }
}
