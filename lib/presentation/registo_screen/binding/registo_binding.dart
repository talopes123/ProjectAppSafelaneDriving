import '../controller/registo_controller.dart';
import 'package:get/get.dart';

class RegistoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistoController());
  }
}
