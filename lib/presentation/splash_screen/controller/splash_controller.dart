import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(AppRoutes.onboardingScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
