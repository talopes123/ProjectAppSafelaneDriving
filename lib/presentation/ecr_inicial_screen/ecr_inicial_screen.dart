import 'controller/ecr_inicial_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/widgets/custom_button.dart';

class EcrInicialScreen extends GetWidget<EcrInicialController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(
                            0.5012722418232894, 5.149468622470529e-17),
                        end: Alignment(0.5012722780370129, 1),
                        colors: [
                      ColorConstant.indigo600,
                      ColorConstant.indigo60051
                    ])),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgTopelipses,
                                  height: getVerticalSize(123.00),
                                  width: getHorizontalSize(211.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 51, right: 51),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(136.50)),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgEllipse6,
                                      height: getVerticalSize(233.00),
                                      width: getHorizontalSize(273.00),
                                      fit: BoxFit.cover)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 25, top: 58, right: 25),
                              child: Text("msg_drive_safe_and_benefit".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold22))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(257.00),
                              margin: getMargin(left: 25, top: 45, right: 25),
                              child: Text("msg_enjoy_inumerous".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsSemiBold15))),
                      CustomButton(
                          width: 343,
                          text: "lbl_get_started".tr,
                          margin: getMargin(
                              left: 25, top: 57, right: 25, bottom: 5),
                          onTap: onTapGetstarted,
                          alignment: Alignment.center)
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(AppRoutes.registoScreen);
  }
}
