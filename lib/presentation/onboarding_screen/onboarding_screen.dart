import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/widgets/custom_button.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90001,
            body: Container(
                height: getVerticalSize(844),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage40,
                      height: getVerticalSize(860),
                      width: getHorizontalSize(386),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(left: 16, right: 16, bottom: 72),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage26,
                                    height: getVerticalSize(320),
                                    width: getHorizontalSize(344)),
                                CustomButton(
                                    height: getVerticalSize(60),
                                    text: "lbl_sign_up".tr.toUpperCase(),
                                    margin: getMargin(top: 80),
                                    variant: ButtonVariant.FillWhiteA700,
                                    shape: ButtonShape.RoundedBorder29,
                                    padding: ButtonPadding.PaddingAll19,
                                    fontStyle:
                                        ButtonFontStyle.MontserratRomanBold16,
                                    onTap: onTapSignup),
                                CustomButton(
                                    height: getVerticalSize(60),
                                    text: "lbl_login".tr.toUpperCase(),
                                    margin: getMargin(top: 13),
                                    variant: ButtonVariant.FillRedA70001,
                                    shape: ButtonShape.RoundedBorder29,
                                    padding: ButtonPadding.PaddingAll19,
                                    fontStyle: ButtonFontStyle
                                        .MontserratRomanBold16WhiteA700,
                                    onTap: onTapLogin)
                              ])))
                ]))));
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.signupScreen);
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
