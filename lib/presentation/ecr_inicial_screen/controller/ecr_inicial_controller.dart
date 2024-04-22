import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/ecr_inicial_screen/models/ecr_inicial_model.dart';

class EcrInicialController extends GetxController {
  Rx<EcrInicialModel> ecrInicialModelObj = EcrInicialModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.registoScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
