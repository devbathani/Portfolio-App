import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
    return GetBuilder<ThemeController>(builder: (_) {
      return GetMaterialApp(
        title: "Virus.dev",
        theme: themeController.isDarkMode
            ? ThemeData.dark()
            : ThemeData.light().copyWith(
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.amber,
                ),
              ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      );
    });
  }
}
