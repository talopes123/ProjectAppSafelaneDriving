import '../controller/informa_oes_viagem_controller.dart';
import 'package:get/get.dart';

class InformaOesViagemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InformaOesViagemController());
  }
}
