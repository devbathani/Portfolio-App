import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeController extends GetxController {
  void launchSocialLinks(String urlString) async {
    await launchUrlString(urlString);
  }

  bool homeHover = false;
  bool projectHover = false;
  bool buyMeACoffeeHover = false;
  bool redHover = false;
  bool yellowHover = false;
  bool orangeHover = false;
  bool greenHover = false;
  bool blueHover = false;

  changeHomeHover(bool hover) {
    this.homeHover = hover;
    update();
  }

  changeProjectHover(bool hover) {
    this.projectHover = hover;
    update();
  }

  changeBuyMeaCoffeeHover(bool hover) {
    this.buyMeACoffeeHover = hover;
    update();
  }

  changeRedHover(bool hover) {
    this.redHover = hover;
    update();
  }

  changeYellowHover(bool hover) {
    this.yellowHover = hover;
    update();
  }

  changeOrangeHover(bool hover) {
    this.orangeHover = hover;
    update();
  }

  changeGreenHover(bool hover) {
    this.greenHover = hover;
    update();
  }

  changeBlueHover(bool hover) {
    this.blueHover = hover;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
}
