import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/presentation/dashboard_page/models/dashboard_model.dart';

class DashboardController extends GetxController {
  DashboardController(this.dashboardModelObj);

  Rx<DashboardModel> dashboardModelObj;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
