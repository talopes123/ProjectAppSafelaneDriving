import 'controller/rating_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

class RatingOneScreen extends GetWidget<RatingOneController> {
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
                      child: Padding(
                          padding: getPadding(left: 15, top: 32, right: 15),
                          child: Text("msg_fuel_consumption".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 9),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    margin: getMargin(
                                        left: 15, top: 23, bottom: 23),
                                    child: Text(
                                        "msg_grade_3_25_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Container(
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(114.00),
                                    margin: getMargin(
                                        top: 34, right: 21, bottom: 33),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVelocidadeAmber500,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      114.00))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width:
                                                      getHorizontalSize(10.00),
                                                  margin: getMargin(
                                                      left: 24, right: 24),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700)))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 16, top: 12, right: 16),
                          child: Text("lbl_speed".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 8),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(182.00),
                                    margin: getMargin(
                                        left: 15, top: 23, bottom: 23),
                                    child: Text(
                                        "msg_grade_4_23_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Container(
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(114.00),
                                    margin: getMargin(
                                        top: 34, right: 22, bottom: 33),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVelocidadeAmber50021x114,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      114.00))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width:
                                                      getHorizontalSize(12.00),
                                                  margin: getMargin(left: 10),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700)))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 15, top: 10, right: 15),
                          child: Text("msg_carbon_dioxide_co2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 10),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(187.00),
                                    margin: getMargin(
                                        left: 15, top: 23, bottom: 23),
                                    child: Text(
                                        "msg_grade_4_5_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Container(
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(117.00),
                                    margin: getMargin(
                                        top: 34, right: 24, bottom: 33),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(right: 3),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVelocidadeAmber50021x114,
                                                      height: getVerticalSize(
                                                          21.00),
                                                      width: getHorizontalSize(
                                                          114.00)))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width:
                                                      getHorizontalSize(12.00),
                                                  margin: getMargin(left: 10),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700)))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 15, top: 11, right: 15),
                          child: Text("msg_braking_and_acellerations".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 9),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(220.00),
                                    margin: getMargin(
                                        left: 15, top: 23, bottom: 23),
                                    child: Text(
                                        "msg_grade_2_80_classification".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Container(
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(114.00),
                                    margin: getMargin(
                                        left: 17, top: 33, bottom: 34),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVelocidade21x114,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      114.00))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width:
                                                      getHorizontalSize(12.00),
                                                  margin: getMargin(
                                                      left: 41, right: 41),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700)))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 16, top: 9, right: 16),
                          child: Text("lbl_curves".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold16))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 11, bottom: 51),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    width: getHorizontalSize(214.00),
                                    margin: getMargin(
                                        left: 17, top: 23, bottom: 23),
                                    child: Text(
                                        "msg_grade_3_25_classification2".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium18)),
                                Container(
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(114.00),
                                    margin: getMargin(
                                        left: 17, top: 33, bottom: 34),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVelocidadeAmber500,
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width: getHorizontalSize(
                                                      114.00))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(21.00),
                                                  width:
                                                      getHorizontalSize(10.00),
                                                  margin: getMargin(
                                                      left: 24, right: 24),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700)))
                                        ]))
                              ])))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
