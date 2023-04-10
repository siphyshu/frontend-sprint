import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/core/utils/validation_functions.dart';
import 'package:frontend_sprint/widgets/custom_button.dart';
import 'package:frontend_sprint/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.black90002,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgHttpsapplot203x390,
                                    height: getVerticalSize(203),
                                    width: getHorizontalSize(390)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 24),
                                        child: Text("lbl_sign_up3".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoItalicBlack36))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16),
                                        child: Text("msg_create_an_account".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanMedium14))),
                                Padding(
                                    padding: getPadding(
                                        left: 10, top: 67, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 17, bottom: 44),
                                              child: SizedBox(
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(13),
                                                      thickness:
                                                          getVerticalSize(13),
                                                      color: ColorConstant
                                                          .black900))),
                                          Expanded(
                                              child: Padding(
                                                  padding: getPadding(left: 7),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 9),
                                                            child: Text(
                                                                "lbl_first_name"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtFormula1DisplayRegular18)),
                                                        CustomTextFormField(
                                                            focusNode:
                                                                FocusNode(),
                                                            controller: controller
                                                                .frame632829Controller,
                                                            hintText:
                                                                "lbl_e_g_jackson"
                                                                    .tr,
                                                            margin: getMargin(
                                                                top: 8))
                                                      ])))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 30, top: 35),
                                        child: Text("lbl_last_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtFormula1DisplayRegular18))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.frame632830Controller,
                                    hintText: "lbl_e_g_smith".tr,
                                    margin:
                                        getMargin(left: 18, top: 8, right: 17)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 30, top: 31),
                                        child: Text("lbl_email".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtFormula1DisplayRegular18))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: controller.emailOneController,
                                    hintText: "msg_hello_company_com".tr,
                                    margin:
                                        getMargin(left: 18, top: 8, right: 17),
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    }),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 30, top: 31),
                                        child: Text("lbl_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtFormula1DisplayRegular18))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.passwordOneController,
                                    hintText: "lbl".tr,
                                    margin:
                                        getMargin(left: 18, top: 8, right: 17),
                                    padding: TextFormFieldPadding.PaddingT12,
                                    textInputAction: TextInputAction.done,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 13,
                                            right: 12,
                                            bottom: 13),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgEye)),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(44))),
                                CustomButton(
                                    height: getVerticalSize(44),
                                    text: "lbl_sign_up".tr.toUpperCase(),
                                    margin:
                                        getMargin(left: 18, top: 50, right: 17),
                                    variant: ButtonVariant.FillRedA70002,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle: ButtonFontStyle.MontserratBold16,
                                    onTap: navigateToDashboard),
                                Padding(
                                    padding: getPadding(top: 29, bottom: 44),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_i_am_already_a_member2"
                                                  .tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#ffffff"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#ffffff"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "lbl_log_in2".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.fromHex(
                                                      "#00f5d0"),
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Formula1',
                                                  fontWeight: FontWeight.w500))
                                        ]),
                                        textAlign: TextAlign.left))
                              ])))
                        ])))));
  }

  navigateToDashboard() {
    Get.toNamed(AppRoutes.dashboardContainerScreen);
  }
}
