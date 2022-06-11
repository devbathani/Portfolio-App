import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_portfolio/app/data/theme_data/theme_controller.dart';

class HomeView extends GetView<ThemeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: GetBuilder<ThemeController>(builder: (_) {
          return Switch(
            value: controller.isDarkMode,
            onChanged: (value) {
              log(value.toString());
              _.toggleDarkMode();
            },
          );
        }),
      ),
    );
  }
}
