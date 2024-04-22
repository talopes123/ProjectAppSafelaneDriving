import '../controller/p_gina_inicial_controller.dart';
import 'package:get/get.dart';

class PGinaInicialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PGinaInicialController());
  }
}
