import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/app/core/utils.dart';
import 'package:my_portfolio/app/data/theme_data/theme_controller.dart';
import 'package:my_portfolio/app/modules/home/views/home_view_mobile.dart';
import 'package:my_portfolio/app/modules/home/views/home_view_web.dart';

class HomeView extends GetView<ThemeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.isMobile ? HomeViewMobile() : HomeViewWeb();
      },
    );
  }
}
