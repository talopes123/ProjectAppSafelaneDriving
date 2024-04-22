import '../controller/ecr_inicial_controller.dart';
import 'package:get/get.dart';

class EcrInicialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EcrInicialController());
  }
}
