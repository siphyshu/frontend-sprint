import '../dashboard_page/widgets/sliderracetwo_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard_model.dart';
import 'models/sliderracetwo_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/widgets/custom_button.dart';
import 'package:frontend_sprint/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 73,
                      bottom: 7,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 1,
                            right: 16,
                          ),
                          padding: getPadding(
                            left: 15,
                            top: 16,
                            right: 15,
                            bottom: 16,
                          ),
                          decoration: AppDecoration.fillGray900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  160,
                                ),
                                width: getHorizontalSize(
                                  252,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgVector104,
                                      height: getVerticalSize(
                                        138,
                                      ),
                                      width: getHorizontalSize(
                                        211,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          12,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder1,
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            160,
                                          ),
                                          width: getHorizontalSize(
                                            252,
                                          ),
                                          padding: getPadding(
                                            top: 6,
                                            right: 89,
                                            bottom: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder1,
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup6,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCarf12x1,
                                                height: getVerticalSize(
                                                  18,
                                                ),
                                                width: getHorizontalSize(
                                                  27,
                                                ),
                                                alignment:
                                                    Alignment.bottomRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_australian_gp".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtFormula1DisplayBold20,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 4,
                                          ),
                                          child: Text(
                                            "lbl_melbourne".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtFormula1DisplayBold12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        44,
                                      ),
                                      width: getHorizontalSize(
                                        84,
                                      ),
                                      margin: getMargin(
                                        left: 86,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              "lbl_participants".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtFormula1DisplayBold12TealA400,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              "lbl_16k".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRomanBold24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 7,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "msg_31st_mar_2nd_april".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratRomanMedium14,
                                      ),
                                    ),
                                    CustomButton(
                                      height: getVerticalSize(
                                        30,
                                      ),
                                      width: getHorizontalSize(
                                        133,
                                      ),
                                      text: "msg_36_000_pool_raised".tr,
                                      margin: getMargin(
                                        left: 57,
                                      ),
                                      variant: ButtonVariant.FillBlue700,
                                    ),
                                  ],
                                ),
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  37,
                                ),
                                text: "lbl_place_bet".tr,
                                margin: getMargin(
                                  top: 17,
                                ),
                                fontStyle:
                                    ButtonFontStyle.MontserratRomanSemiBold14,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 17,
                            right: 16,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  1,
                                ),
                                width: getHorizontalSize(
                                  90,
                                ),
                                margin: getMargin(
                                  top: 9,
                                  bottom: 7,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: getHorizontalSize(
                                          90,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: getHorizontalSize(
                                          90,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.whiteA700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_lockdown_in".tr,
                                        style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#ffffff"),
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_06_12_44".tr,
                                        style: TextStyle(
                                          color:
                                              ColorConstant.fromHex("#00f5d0"),
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                  bottom: 7,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    102,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.whiteA700,
                                    indent: getHorizontalSize(
                                      12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 1,
                            top: 25,
                            right: 16,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 14,
                            right: 16,
                            bottom: 14,
                          ),
                          decoration: AppDecoration.fillGray900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_available_funds".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtFormula1DisplayRegular12,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 170,
                                    ),
                                    child: Text(
                                      "lbl_placed".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtFormula1DisplayBold12WhiteA700,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                  bottom: 1,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_16_000".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratRomanBold44,
                                          ),
                                          Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                              top: 11,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20,
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                134,
                                              ),
                                              width: getHorizontalSize(
                                                195,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup23,
                                                    height: getVerticalSize(
                                                      134,
                                                    ),
                                                    width: getHorizontalSize(
                                                      116,
                                                    ),
                                                    alignment:
                                                        Alignment.centerRight,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        top: 10,
                                                      ),
                                                      child: Text(
                                                        "msg_amount_withdrawn"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtFormula1DisplayRegular12,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        top: 31,
                                                      ),
                                                      child: Text(
                                                        "lbl_10_000".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratRomanBold36,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        bottom: 11,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  "lbl_last_withdrawn"
                                                                      .tr,
                                                              style: TextStyle(
                                                                color: ColorConstant
                                                                    .fromHex(
                                                                        "#ffffff"),
                                                                fontSize:
                                                                    getFontSize(
                                                                  12,
                                                                ),
                                                                fontFamily:
                                                                    'Formula1',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: "lbl_26_feb"
                                                                  .tr,
                                                              style: TextStyle(
                                                                color: ColorConstant
                                                                    .fromHex(
                                                                        "#ffffff"),
                                                                fontSize:
                                                                    getFontSize(
                                                                  12,
                                                                ),
                                                                fontFamily:
                                                                    'Formula1',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 17,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_3rd".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtFormula1DisplayWide24,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "lbl_in_last_race".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtFormula1DisplayRegular12,
                                            ),
                                          ),
                                          Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                              top: 20,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12,
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                59,
                                              ),
                                              width: getHorizontalSize(
                                                111,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      padding: getPadding(
                                                        left: 10,
                                                        top: 5,
                                                        right: 10,
                                                        bottom: 5,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: fs.Svg(
                                                            ImageConstant
                                                                .imgGroup4,
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 18,
                                                            ),
                                                            child: Text(
                                                              "lbl_5800".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanMedium24,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                      ),
                                                      child: Text(
                                                        "lbl_last_winnings".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtFormula1DisplayRegular12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(
                                              top: 16,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder12,
                                            ),
                                            child: Container(
                                              height: getVerticalSize(
                                                59,
                                              ),
                                              width: getHorizontalSize(
                                                113,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      padding: getPadding(
                                                        left: 13,
                                                        top: 5,
                                                        right: 13,
                                                        bottom: 5,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: fs.Svg(
                                                            ImageConstant
                                                                .imgGroup5,
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 18,
                                                            ),
                                                            child: Text(
                                                              "lbl_9200".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRomanMedium24,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        top: 6,
                                                      ),
                                                      child: Text(
                                                        "lbl_total_winnings".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtFormula1DisplayRegular12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 58,
                            right: 14,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_upcoming".tr.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoItalicBlack28,
                              ),
                              CustomButton(
                                height: getVerticalSize(
                                  34,
                                ),
                                width: getHorizontalSize(
                                  69,
                                ),
                                text: "lbl_view_all".tr,
                                variant: ButtonVariant.FillTealA400,
                                fontStyle: ButtonFontStyle
                                    .MontserratRomanSemiBold12Black900,
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            top: 12,
                          ),
                          child: IntrinsicWidth(
                            child: Obx(
                              () => CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: getVerticalSize(
                                    158,
                                  ),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    controller.silderIndex.value = index;
                                  },
                                ),
                                itemCount: controller.dashboardModelObj.value
                                    .sliderracetwoItemList.length,
                                itemBuilder: (context, index, realIndex) {
                                  SliderracetwoItemModel model = controller
                                      .dashboardModelObj
                                      .value
                                      .sliderracetwoItemList[index];
                                  return SliderracetwoItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            7,
                          ),
                          margin: getMargin(
                            left: 147,
                            top: 16,
                          ),
                          child: SmoothIndicator(
                            offset: 0,
                            count: 4,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 4,
                              activeDotColor: ColorConstant.redA700,
                              dotColor: ColorConstant.blueGray900,
                              dotHeight: getVerticalSize(
                                7,
                              ),
                              dotWidth: getHorizontalSize(
                                7,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            157,
                          ),
                          width: getHorizontalSize(
                            369,
                          ),
                          margin: getMargin(
                            left: 2,
                            top: 26,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: getVerticalSize(
                                    80,
                                  ),
                                  width: getHorizontalSize(
                                    138,
                                  ),
                                  margin: getMargin(
                                    right: 7,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                        height: getVerticalSize(
                                          78,
                                        ),
                                        width: getHorizontalSize(
                                          67,
                                        ),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(
                                          left: 23,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgLocation,
                                        height: getVerticalSize(
                                          78,
                                        ),
                                        width: getHorizontalSize(
                                          67,
                                        ),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(
                                          right: 31,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            55,
                                          ),
                                          width: getHorizontalSize(
                                            138,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    5,
                                                  ),
                                                  width: getHorizontalSize(
                                                    92,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        46,
                                                      ),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.5,
                                                        0.5,
                                                      ),
                                                      end: Alignment(
                                                        0.5,
                                                        1,
                                                      ),
                                                      colors: [
                                                        ColorConstant
                                                            .black900Cc,
                                                        ColorConstant
                                                            .black900Cc,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    5,
                                                  ),
                                                  width: getHorizontalSize(
                                                    92,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        46,
                                                      ),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.5,
                                                        0.5,
                                                      ),
                                                      end: Alignment(
                                                        0.5,
                                                        1,
                                                      ),
                                                      colors: [
                                                        ColorConstant
                                                            .black900Cc,
                                                        ColorConstant
                                                            .black900Cc,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage39,
                                                height: getVerticalSize(
                                                  52,
                                                ),
                                                width: getHorizontalSize(
                                                  107,
                                                ),
                                                alignment: Alignment.topCenter,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: getVerticalSize(
                                    79,
                                  ),
                                  width: getHorizontalSize(
                                    143,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgLocationCyan500,
                                        height: getVerticalSize(
                                          78,
                                        ),
                                        width: getHorizontalSize(
                                          67,
                                        ),
                                        alignment: Alignment.centerLeft,
                                        margin: getMargin(
                                          left: 20,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgLocationCyan500,
                                        height: getVerticalSize(
                                          78,
                                        ),
                                        width: getHorizontalSize(
                                          67,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            55,
                                          ),
                                          width: getHorizontalSize(
                                            143,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    6,
                                                  ),
                                                  width: getHorizontalSize(
                                                    95,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        47,
                                                      ),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.5,
                                                        0.5,
                                                      ),
                                                      end: Alignment(
                                                        0.5,
                                                        1,
                                                      ),
                                                      colors: [
                                                        ColorConstant
                                                            .black900Cc,
                                                        ColorConstant
                                                            .black900Cc,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    6,
                                                  ),
                                                  width: getHorizontalSize(
                                                    95,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        47,
                                                      ),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.5,
                                                        0.5,
                                                      ),
                                                      end: Alignment(
                                                        0.5,
                                                        1,
                                                      ),
                                                      colors: [
                                                        ColorConstant
                                                            .black900Cc,
                                                        ColorConstant
                                                            .black900Cc,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage32,
                                                height: getVerticalSize(
                                                  53,
                                                ),
                                                width: getHorizontalSize(
                                                  112,
                                                ),
                                                alignment: Alignment.topCenter,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgLocationCyan50078x67,
                                        height: getVerticalSize(
                                          78,
                                        ),
                                        width: getHorizontalSize(
                                          67,
                                        ),
                                        alignment: Alignment.centerRight,
                                        margin: getMargin(
                                          right: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomIconButton(
                                height: 40,
                                width: 40,
                                margin: getMargin(
                                  top: 15,
                                ),
                                alignment: Alignment.topLeft,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgClock,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    bottom: 24,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(
                                          top: 3,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant.imgGroup31,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 6,
                                          bottom: 2,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_rules".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRomanBold14,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 7,
                                              ),
                                              child: Text(
                                                "msg_view_the_rules_of".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 47,
                                    top: 14,
                                  ),
                                  child: Text(
                                    "lbl_mybets".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratRomanBold16,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: getHorizontalSize(
                                    182,
                                  ),
                                  margin: getMargin(
                                    left: 47,
                                    top: 36,
                                  ),
                                  child: Text(
                                    "msg_see_your_previous".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratRomanMedium12WhiteA700,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgVector100,
                                height: getVerticalSize(
                                  78,
                                ),
                                width: getHorizontalSize(
                                  67,
                                ),
                                alignment: Alignment.topRight,
                                margin: getMargin(
                                  right: 11,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    358,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    358,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    358,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
