import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/informa_oes_viagem_screen/models/informa_oes_viagem_model.dart';

class InformaOesViagemController extends GetxController {
  Rx<InformaOesViagemModel> informaOesViagemModelObj =
      InformaOesViagemModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
