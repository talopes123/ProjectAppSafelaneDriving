import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/rating_screen/models/rating_model.dart';

class RatingController extends GetxController {
  Rx<RatingModel> ratingModelObj = RatingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
