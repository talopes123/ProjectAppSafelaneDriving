import 'controller/rating_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/widgets/custom_button.dart';

class RatingScreen extends GetWidget<RatingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.bluegray100,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 33, top: 5, right: 33),
                          child: InkWell(
                              onTap: () {
                                onTapImgClose();
                              },
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(24.00),
                                  width: getSize(24.00))))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 15, top: 17, right: 15),
                          child: Text("lbl_safelane_rating".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold18Black900))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 21),
                          padding: getPadding(
                              left: 30, top: 7, right: 112, bottom: 7),
                          decoration: AppDecoration.txtFillIndigo700,
                          child: Text("msg_fuel_consumption".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16WhiteA700))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 15, top: 29, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    child: Text(
                                        "msg_grade_3_25_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 10),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgVelocidade,
                                        height: getVerticalSize(21.00),
                                        width: getHorizontalSize(114.00)))
                              ]))),
                  CustomButton(
                      width: 393,
                      text: "lbl_speed".tr,
                      margin: getMargin(top: 27),
                      variant: ButtonVariant.FillIndigo700,
                      padding: ButtonPadding.PaddingAll6,
                      fontStyle: ButtonFontStyle.PoppinsBold16,
                      alignment: Alignment.centerLeft),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 15, top: 29, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    child: Text(
                                        "msg_grade_3_25_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 10),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgVelocidade,
                                        height: getVerticalSize(21.00),
                                        width: getHorizontalSize(114.00)))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 27),
                          padding: getPadding(
                              left: 30, top: 7, right: 96, bottom: 7),
                          decoration: AppDecoration.txtFillIndigo700,
                          child: Text("msg_carbon_dioxide_co2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16WhiteA700))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 15, top: 27, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    child: Text(
                                        "msg_grade_3_25_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Padding(
                                    padding: getPadding(
                                        left: 48, top: 10, bottom: 9),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgVelocidade,
                                        height: getVerticalSize(21.00),
                                        width: getHorizontalSize(114.00)))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 29),
                          padding: getPadding(
                              left: 30, top: 7, right: 96, bottom: 7),
                          decoration: AppDecoration.txtFillIndigo700,
                          child: Text("msg_carbon_dioxide_co2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16WhiteA700))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 15, top: 29, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    child: Text(
                                        "msg_grade_3_25_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Padding(
                                    padding: getPadding(
                                        left: 48, top: 8, bottom: 11),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgVelocidade,
                                        height: getVerticalSize(21.00),
                                        width: getHorizontalSize(114.00)))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 27),
                          padding: getPadding(
                              left: 30, top: 6, right: 96, bottom: 6),
                          decoration: AppDecoration.txtFillIndigo700,
                          child: Text("msg_carbon_dioxide_co2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16WhiteA700))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(
                              left: 15, top: 27, right: 15, bottom: 54),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    child: Text(
                                        "msg_grade_3_25_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Padding(
                                    padding: getPadding(top: 11, bottom: 8),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgVelocidade,
                                        height: getVerticalSize(21.00),
                                        width: getHorizontalSize(114.00)))
                              ])))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
