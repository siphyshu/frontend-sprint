import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/core/utils/validation_functions.dart';
import 'package:frontend_sprint/widgets/custom_button.dart';
import 'package:frontend_sprint/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.black900,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(251),
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("lbl_login2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtFormula1DisplayBold36))),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgHttpsapplot249x390,
                                    height: getVerticalSize(249),
                                    width: getHorizontalSize(390),
                                    alignment: Alignment.center)
                              ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 16, top: 11),
                                  child: Text("msg_enter_your_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoRomanRegular16))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(19),
                                  width: getHorizontalSize(58),
                                  margin: getMargin(left: 1, top: 78),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("lbl_email".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular16)),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(bottom: 7),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(19),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .black900))))
                                      ]))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailOneController,
                              hintText: "msg_hello_company_com".tr,
                              margin: getMargin(left: 16, top: 13, right: 16),
                              variant: TextFormFieldVariant.OutlineWhiteA700,
                              padding: TextFormFieldPadding.PaddingT19,
                              fontStyle: TextFormFieldFontStyle
                                  .MontserratRomanRegular14,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 19, top: 13),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoRomanRegular16))),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordOneController,
                              hintText: "lbl_your_password".tr,
                              margin: getMargin(left: 16, top: 13, right: 16),
                              variant: TextFormFieldVariant.OutlineWhiteA700,
                              padding: TextFormFieldPadding.PaddingT20,
                              fontStyle: TextFormFieldFontStyle
                                  .MontserratRomanRegular14,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 20,
                                          right: 12,
                                          bottom: 20),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(58)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 17, right: 16),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratRomanSemiBold14))),
                          CustomButton(
                              height: getVerticalSize(59),
                              text: "lbl_login2".tr.toUpperCase(),
                              margin: getMargin(left: 16, top: 77, right: 16),
                              shape: ButtonShape.RoundedBorder29,
                              padding: ButtonPadding.PaddingAll19,
                              fontStyle: ButtonFontStyle.Formula1DisplayBold16,
                              onTap: navigateToDashboard),
                          Padding(
                              padding: getPadding(top: 13, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_i_am_a_new_user2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.fromHex(
                                                "#ffffff"),
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.fromHex(
                                                "#ffffff"),
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_sign_up2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.fromHex(
                                                "#00f5d0"),
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Formula1',
                                            fontWeight: FontWeight.w500))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  navigateToDashboard() {
    Get.toNamed(AppRoutes.dashboardContainerScreen);
  }
}
