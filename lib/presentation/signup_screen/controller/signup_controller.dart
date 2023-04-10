import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController frame632829Controller = TextEditingController();

  TextEditingController frame632830Controller = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame632829Controller.dispose();
    frame632830Controller.dispose();
    emailOneController.dispose();
    passwordOneController.dispose();
  }
}
