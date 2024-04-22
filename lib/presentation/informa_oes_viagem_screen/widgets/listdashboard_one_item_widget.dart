import '../controller/informa_oes_viagem_controller.dart';
import '../models/listdashboard_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListdashboardOneItemWidget extends StatelessWidget {
  ListdashboardOneItemWidget(this.listdashboardOneItemModelObj);

  ListdashboardOneItemModel listdashboardOneItemModelObj;

  var controller = Get.find<InformaOesViagemController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 13.794983,
        right: 1,
        bottom: 13.794983,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 2,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgDashboard,
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
                    left: 12,
                    top: 2,
                  ),
                  child: Text(
                    "lbl_average_speed".tr,
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
              left: 131,
              bottom: 2,
            ),
            child: Text(
              "lbl_40_km_h".tr,
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
