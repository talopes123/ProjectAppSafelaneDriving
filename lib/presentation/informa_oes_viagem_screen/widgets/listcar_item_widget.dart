import '../controller/informa_oes_viagem_controller.dart';
import '../models/listcar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListcarItemWidget extends StatelessWidget {
  ListcarItemWidget(this.listcarItemModelObj);

  ListcarItemModel listcarItemModelObj;

  var controller = Get.find<InformaOesViagemController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 17,
        top: 13.695,
        right: 34,
        bottom: 13.695,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: getPadding(
                  bottom: 6,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgCar,
                  height: getVerticalSize(
                    20.00,
                  ),
                  width: getHorizontalSize(
                    18.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 13,
                  top: 3,
                ),
                child: Text(
                  "lbl_range".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16,
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 203,
              top: 1,
              bottom: 2,
            ),
            child: Text(
              "lbl_120_km".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsMedium16,
            ),
          ),
        ],
      ),
    );
  }
}
