import '../controller/pontos_controller.dart';
import 'package:get/get.dart';

class PontosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PontosController());
  }
}
