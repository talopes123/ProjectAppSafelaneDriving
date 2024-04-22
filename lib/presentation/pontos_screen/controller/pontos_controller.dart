import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/pontos_screen/models/pontos_model.dart';

class PontosController extends GetxController {
  Rx<PontosModel> pontosModelObj = PontosModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
