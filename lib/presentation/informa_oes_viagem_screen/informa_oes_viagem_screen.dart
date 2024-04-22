import '../informa_oes_viagem_screen/widgets/listcar_item_widget.dart';
import '../informa_oes_viagem_screen/widgets/listcar_one_item_widget.dart';
import '../informa_oes_viagem_screen/widgets/listcar_two_item_widget.dart';
import '../informa_oes_viagem_screen/widgets/listdashboard_one_item_widget.dart';
import 'controller/informa_oes_viagem_controller.dart';
import 'models/listcar_item_model.dart';
import 'models/listcar_one_item_model.dart';
import 'models/listcar_two_item_model.dart';
import 'models/listdashboard_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/widgets/app_bar/custom_app_bar.dart';

class InformaOesViagemScreen extends GetWidget<InformaOesViagemController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.bluegray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 57,
                leading: Padding(
                    padding: getPadding(left: 33, top: 5, bottom: 23),
                    child: InkWell(
                        onTap: () {
                          onTapImgClose();
                        },
                        child: CommonImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(24.00),
                            width: getSize(24.00)))),
                title: Padding(
                    padding: getPadding(left: 85),
                    child: Text("lbl_trip_data".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBlack18))),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      margin: getMargin(top: 4),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Obx(() => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.informaOesViagemModelObj.value
                              .listcarItemList.length,
                          itemBuilder: (context, index) {
                            ListcarItemModel model = controller
                                .informaOesViagemModelObj
                                .value
                                .listcarItemList[index];
                            return ListcarItemWidget(model);
                          }))),
                  Padding(
                      padding: getPadding(left: 14, top: 41, right: 14),
                      child: Text("lbl_from_start".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16)),
                  Container(
                      margin: getMargin(top: 11),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Obx(() => ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.informaOesViagemModelObj.value
                              .listcarOneItemList.length,
                          itemBuilder: (context, index) {
                            ListcarOneItemModel model = controller
                                .informaOesViagemModelObj
                                .value
                                .listcarOneItemList[index];
                            return ListcarOneItemWidget(model);
                          }))),
                  Padding(
                      padding: getPadding(left: 12, top: 46, right: 12),
                      child: Text("lbl_from_reset".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold16)),
                  Container(
                      width: double.infinity,
                      margin: getMargin(top: 11),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 12, top: 14, right: 12),
                                child: Obx(() => ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: controller
                                        .informaOesViagemModelObj
                                        .value
                                        .listcarTwoItemList
                                        .length,
                                    itemBuilder: (context, index) {
                                      ListcarTwoItemModel model = controller
                                          .informaOesViagemModelObj
                                          .value
                                          .listcarTwoItemList[index];
                                      return ListcarTwoItemWidget(model);
                                    }))),
                            Padding(
                                padding: getPadding(
                                    left: 12, top: 27, right: 12, bottom: 12),
                                child: Obx(() => ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: controller
                                        .informaOesViagemModelObj
                                        .value
                                        .listdashboardOneItemList
                                        .length,
                                    itemBuilder: (context, index) {
                                      ListdashboardOneItemModel model =
                                          controller
                                              .informaOesViagemModelObj
                                              .value
                                              .listdashboardOneItemList[index];
                                      return ListdashboardOneItemWidget(model);
                                    })))
                          ]))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
