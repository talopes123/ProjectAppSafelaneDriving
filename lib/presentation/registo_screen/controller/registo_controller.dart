import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/registo_screen/models/registo_model.dart';
import 'package:flutter/material.dart';

class RegistoController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  TextEditingController languageTwoController = TextEditingController();

  TextEditingController confirmpassworController = TextEditingController();

  Rx<RegistoModel> registoModelObj = RegistoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    languageOneController.dispose();
    languageTwoController.dispose();
    confirmpassworController.dispose();
  }
}
