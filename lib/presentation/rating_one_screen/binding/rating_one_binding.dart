import '../controller/rating_one_controller.dart';
import 'package:get/get.dart';

class RatingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RatingOneController());
  }
}
