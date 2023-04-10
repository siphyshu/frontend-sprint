import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sprint/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black90001,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgSpeed,
                      height: getVerticalSize(934),
                      width: getHorizontalSize(97),
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgHttpsapplot,
                      height: getVerticalSize(805),
                      width: getHorizontalSize(126),
                      alignment: Alignment.centerLeft,
                      margin: getMargin(left: 3)),
                  CustomImageView(
                      imagePath: ImageConstant.imgHttpsapplot,
                      height: getVerticalSize(805),
                      width: getHorizontalSize(126),
                      alignment: Alignment.centerRight,
                      margin: getMargin(right: 8)),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage26,
                      height: getVerticalSize(320),
                      width: getHorizontalSize(344),
                      alignment: Alignment.topCenter,
                      margin: getMargin(top: 198)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 47, top: 40, right: 47, bottom: 40),
                          decoration: AppDecoration.outlineGray80051,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: getMargin(left: 120, right: 121),
                                    padding: getPadding(
                                        left: 4, top: 5, right: 4, bottom: 5),
                                    decoration: AppDecoration.outlineBlack9004c
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(45),
                                              width: getHorizontalSize(46),
                                              padding: getPadding(
                                                  left: 5,
                                                  top: 8,
                                                  right: 5,
                                                  bottom: 8),
                                              decoration:
                                                  AppDecoration.fillWhiteA700,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage2,
                                                        height:
                                                            getVerticalSize(23),
                                                        width:
                                                            getHorizontalSize(
                                                                34),
                                                        alignment: Alignment
                                                            .topCenter),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                bottom: 6),
                                                            child: Text(
                                                                "msg_android_club_vitb"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsBold3)))
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 26, bottom: 614),
                                    child: Text("lbl_frontend".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtFormula1DisplayWide2314
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.46),
                                                decoration:
                                                    TextDecoration.underline)))
                              ])))
                ]))));
  }
}
