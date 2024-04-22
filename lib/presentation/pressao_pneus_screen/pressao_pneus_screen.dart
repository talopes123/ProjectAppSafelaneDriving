import 'controller/pressao_pneus_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

class PressaoPneusScreen extends GetWidget<PressaoPneusController> {
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
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(top: 14),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 15, top: 8, right: 15),
                                    child: Text("msg_pressure_is_whitin".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold16)),
                                Padding(
                                    padding: getPadding(
                                        left: 15,
                                        top: 9,
                                        right: 15,
                                        bottom: 14),
                                    child: Text("msg_updated_from_vehicle".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsExtraLight16))
                              ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(376.00),
                          width: size.width,
                          margin: getMargin(top: 97, bottom: 5),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CommonImageView(
                                    imagePath: ImageConstant.imgImage3,
                                    height: getVerticalSize(376.00),
                                    width: getHorizontalSize(393.00))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 23,
                                        top: 40,
                                        right: 9,
                                        bottom: 40),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 1),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text("lbl_2_7_bar".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold16),
                                                    Text("lbl_2_7_bar".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold16)
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  top: 228, right: 6),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text("lbl_2_7_bar".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold16),
                                                    Text("lbl_2_7_bar".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsSemiBold16)
                                                  ]))
                                        ])))
                          ])))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
