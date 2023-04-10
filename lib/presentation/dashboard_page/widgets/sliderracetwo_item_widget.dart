import '../controller/dashboard_controller.dart';
import '../models/sliderracetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:frontend_sprint/core/app_export.dart';
import 'package:frontend_sprint/widgets/custom_button.dart';

// ignore: must_be_immutable
class SliderracetwoItemWidget extends StatelessWidget {
  SliderracetwoItemWidget(this.sliderracetwoItemModelObj);

  SliderracetwoItemModel sliderracetwoItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 368,
      ),
      padding: getPadding(
        left: 15,
        top: 13,
        right: 15,
        bottom: 13,
      ),
      decoration: AppDecoration.fillGray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 1,
                    ),
                    child: Text(
                      "lbl_race_2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      "lbl_jeddah".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtFormula1DisplayBold16,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      111,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 2,
                    ),
                    child: Text(
                      "msg_saudi_arabian_grand".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtFormula1DisplayBold14,
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      30,
                    ),
                    text: "lbl_17_19_march".tr,
                    margin: getMargin(
                      left: 1,
                      top: 18,
                      right: 21,
                    ),
                    variant: ButtonVariant.FillWhiteA70033,
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              left: 25,
              top: 2,
              bottom: 2,
            ),
            color: ColorConstant.black900,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: getVerticalSize(
                128,
              ),
              width: getHorizontalSize(
                190,
              ),
              padding: getPadding(
                left: 24,
                top: 23,
                right: 24,
                bottom: 23,
              ),
              decoration: AppDecoration.black.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgSau,
                    height: getVerticalSize(
                      81,
                    ),
                    width: getHorizontalSize(
                      142,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        1,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
