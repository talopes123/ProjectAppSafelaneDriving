import 'controller/pontos_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

class PontosScreen extends GetWidget<PontosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.bluegray100,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
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
                          padding: getPadding(left: 20, top: 15, right: 20),
                          child: Text("lbl_redeem_rewards".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold18Black900))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 20, top: 97, right: 20),
                          child: Text("lbl_level_1".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold30))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(top: 21),
                          decoration: AppDecoration.fillGray800,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 15, right: 20),
                                    child: Text("msg_available_points".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium22)),
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 7, right: 20),
                                    child: Text("lbl_1_250".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium30)),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 26, top: 48, right: 26),
                                        child: Text("msg_8_000_points_until".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium14WhiteA700))),
                                Container(
                                    width: double.infinity,
                                    margin: getMargin(top: 6, bottom: 15),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(41.00),
                                                  width:
                                                      getHorizontalSize(153.00),
                                                  margin: getMargin(right: 240),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .indigo700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  20.00)))))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 20, top: 54, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 6, bottom: 4),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgPlus,
                                        height: getSize(28.00),
                                        width: getSize(28.00))),
                                Padding(
                                    padding: getPadding(left: 9),
                                    child: Text("msg_see_available_rewards".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold26))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(
                              left: 20, top: 39, right: 20, bottom: 170),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3, bottom: 7),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgPlus,
                                        height: getSize(28.00),
                                        width: getSize(28.00))),
                                Padding(
                                    padding: getPadding(left: 9),
                                    child: Text("lbl_my_history".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold26))
                              ])))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
