
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:flutter/services.dart';
import 'package:goncalo_s_application1/data/models/User.dart';
import 'package:goncalo_s_application1/presentation/defini_oes_screen/defini_oes_screen.dart';



// ignore_for_file: must_be_immutable
 class JanelaLateralDraweritem extends StatefulWidget {

   /* JanelaLateralDraweritem(this.controller);
  JanelaLateralController controller;*/

  final User? user;

  const JanelaLateralDraweritem({Key? key,  this.user}) : super(key: key);

  @override
  _JanelaLateralDraweritemState createState() => _JanelaLateralDraweritemState();

  }
class _JanelaLateralDraweritemState extends State<JanelaLateralDraweritem> {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: AppDecoration.fillBluegray100,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: getMargin(top: 110),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: getPadding(left: 11, top: 20, bottom: 21),
                            child: CommonImageView(
                                imagePath: ImageConstant.imgRectangle9,
                                height: getVerticalSize(54.00),
                                width: getHorizontalSize(55.00))),
                        Padding(
                            padding: getPadding(left: 18, top: 19, bottom: 19),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 1, right: 10),
                                      child: Text(widget.user!.nome!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14)),
                                  Padding(
                                      padding: getPadding(top: 13),

                                      child: Text(
                                          widget.user!.email!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsRegular14Black900))
                                ]))
                      ])),
              Container(
                  width: double.infinity,
                  margin: getMargin(top: 68),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 3, top: 6, right: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgImage2,
                                              height: getVerticalSize(61.00),
                                              width: getHorizontalSize(76.00))),
                                      Padding(
                                          padding:
                                              getPadding(left: 6, bottom: 10),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_mercedes_a_200".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium14),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 9, right: 10),
                                                    child: Text(
                                                        "lbl_99_gc_70".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14Black900))
                                              ]))
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(
                                    left: 15, top: 3, right: 15, bottom: 2),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: getPadding(bottom: 1),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgMusic,
                                              height: getSize(21.00),
                                              width: getSize(21.00))),
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 1),
                                          child: Text("lbl_10".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray600)),
                                      Padding(
                                          padding: getPadding(left: 25, top: 1),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgLock,
                                              height: getSize(21.00),
                                              width: getSize(21.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 2, top: 1, bottom: 1),
                                          child: Text("lbl_locked".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray600))
                                    ])))
                      ])),
              Padding(
                  padding: getPadding(left: 8, top: 14, right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: getPadding(top: 3),
                            child: CommonImageView(
                                svgPath: ImageConstant.imgPlus,
                                height: getSize(18.00),
                                width: getSize(18.00))),
                        Padding(
                            padding: getPadding(left: 5, bottom: 1),
                            child: Text("lbl_add_car".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold14Black900))
                      ])),
              Container(
                  width: double.infinity,
                  margin: getMargin(top: 32, bottom: 59),
                  decoration: AppDecoration.fillWhiteA701,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapMyTransactions();
                            },
                            child: Padding(
                                padding:
                                    getPadding(left: 7, top: 30, right: 10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgFile,
                                              height: getSize(24.00),
                                              width: getSize(24.00))),
                                      Padding(
                                          padding:
                                              getPadding(left: 10, bottom: 6),
                                          child: Text("lbl_redeem_rewards".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium14))
                                    ]))),
                        Padding(
                            padding: getPadding(left: 9, top: 62, right: 10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgScalebalance,
                                          height: getSize(24.00),
                                          width: getSize(24.00))),
                                  Padding(
                                      padding: getPadding(left: 14, bottom: 6),
                                      child: Text("msg_terms_and_conditions".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14))
                                ])),
                        Padding(
                            padding: getPadding(left: 8, top: 64, right: 10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgUser,
                                          height: getSize(24.00),
                                          width: getSize(24.00))),
                                  Padding(
                                      padding: getPadding(left: 16, bottom: 4),
                                      child: Text("lbl_help_center".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium14))
                                ])),
                        GestureDetector(
                            onTap: () {
                              onTapSettings();
                            },
                            child: Padding(
                                padding: getPadding(
                                    left: 7, top: 63, right: 10, bottom: 32),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                          svgPath: ImageConstant.imgSettings,
                                          height: getSize(24.00),
                                          width: getSize(24.00)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 1, bottom: 1),
                                          child: Text("lbl_settings".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium14))
                                    ])))
                      ]))
            ]));
  }

  onTapMyTransactions() {
    Get.toNamed(AppRoutes.pontosScreen);
  }

  onTapSettings() {
    Navigator.push(context,
        MaterialPageRoute(builder:(content) => DefiniOesScreen(user:widget.user)));
  }
}
