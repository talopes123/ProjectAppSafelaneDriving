import '../controller/janela_lateral_controller.dart';
import 'package:get/get.dart';

class JanelaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JanelaLateralController ());
  }
}
