import '../controller/informa_oes_viagem_controller.dart';
import '../models/listcar_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListcarOneItemWidget extends StatelessWidget {
  ListcarOneItemWidget(this.listcarOneItemModelObj);

  ListcarOneItemModel listcarOneItemModelObj;

  var controller = Get.find<InformaOesViagemController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 14,
        top: 14.8899995,
        right: 26,
        bottom: 14.8899995,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCar24x24,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    bottom: 1,
                  ),
                  child: Text(
                    "msg_distance_traveled".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 125,
              top: 1,
            ),
            child: Text(
              "lbl_32_km".tr,
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
