import '../controller/informa_oes_viagem_controller.dart';
import '../models/listcar_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListcarTwoItemWidget extends StatelessWidget {
  ListcarTwoItemWidget(this.listcarTwoItemModelObj);

  ListcarTwoItemModel listcarTwoItemModelObj;

  var controller = Get.find<InformaOesViagemController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 14.904999,
        right: 1,
        bottom: 14.904999,
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
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    top: 8,
                    bottom: 3,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCar24x24,
                    height: getVerticalSize(
                      12.00,
                    ),
                    width: getHorizontalSize(
                      22.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 13,
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
              left: 128,
              top: 1,
            ),
            child: Text(
              "lbl_510_km".tr,
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
