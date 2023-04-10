import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailOneController.dispose();
    passwordOneController.dispose();
  }
}
