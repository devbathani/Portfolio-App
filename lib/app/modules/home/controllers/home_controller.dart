import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeController extends GetxController {
  
  

  void launchSocialLinks(String urlString) async {
    await launchUrlString(urlString);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
}
