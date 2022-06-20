import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeController extends GetxController {
  void launchSocialLinks(String urlString) async {
    await launchUrlString(urlString);
  }

  bool homeHover = false;

  changeHomeHover(bool hover) {
    this.homeHover = hover;
    update();
  }
  bool projectHover = false;

  changeProjectHover(bool hover) {
    this.projectHover = hover;
    update();
  }
  bool buyMeACoffeeHover = false;

  changeBuyMeaCoffeeHover(bool hover) {
    this.buyMeACoffeeHover = hover;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
}
