import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/pressao_pneus_screen/models/pressao_pneus_model.dart';

class PressaoPneusController extends GetxController {
  Rx<PressaoPneusModel> pressaoPneusModelObj = PressaoPneusModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
