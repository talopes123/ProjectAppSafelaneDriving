import '../controller/defini_oes_controller.dart';
import 'package:get/get.dart';

class DefiniOesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DefiniOesController());
  }
}
