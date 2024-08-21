import 'package:get/get.dart';
import 'package:test_ads/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.ONBOARDING);
    });
  }
}
