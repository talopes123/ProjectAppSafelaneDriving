import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/defini_oes_screen/models/defini_oes_model.dart';

class DefiniOesController extends GetxController {
  Rx<DefiniOesModel> definiOesModelObj = DefiniOesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
