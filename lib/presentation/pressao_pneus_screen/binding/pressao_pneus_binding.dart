import '../controller/pressao_pneus_controller.dart';
import 'package:get/get.dart';

class PressaoPneusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PressaoPneusController());
  }
}
