import 'dart:convert';

import 'package:goncalo_s_application1/Config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../janela_lateral_draweritem/janela_lateral_draweritem.dart';
import '../p_gina_inicial_screen/p_gina_inicial_screen.dart';
import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/core/utils/validation_functions.dart';
import 'package:goncalo_s_application1/widgets/custom_button.dart';
import 'package:goncalo_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
// ignore: import_of_legacy_library_into_null_safe
import 'package:progress_dialog/progress_dialog.dart';
import 'package:goncalo_s_application1/data/models/User.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  //SharedPreferences prefs;
  //double screenHeight, screenWidth;
   late ProgressDialog pr;
  @override
  void initState() {
  //  loadPref();
    super.initState();
  }

  Future<void> _onLogin() async {
     pr = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: true, showLogs: true);
    await pr.show();

    String _email = _emailController.text.toString();
    String _password = _passwordController.text.toString();
    http.post(Uri.parse(CONFIG.SERVER + "/scripts/validateLogin.php"),
        body: {"email": _email, "password": _password}).then((response) {
          print(response);
          print(_email);
          print(_password);

      print(response.toString());
      if (response.body == "failed") {
        Fluttertoast.showToast(
            msg: "Login Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        pr.hide().then((isHidden) {
          print(isHidden);
        });
      } else {
        Fluttertoast.showToast(
            msg: "Login Success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        List userdata = response.body.split(",");
         final User user = User(
            email: _email,
            password: _password,
            nome: userdata[1],
            data_inicio_contrato: userdata[2],
            data_fim_contrato: userdata[3],
            telemovel: userdata[4]);
        pr.hide().then((isHidden) {
          print(isHidden);
        });

        Navigator.push(context,
            MaterialPageRoute(builder:(content) => PGinaInicialScreen(user:user)));

        //Get.toNamed(AppRoutes.pGinaInicialScreen);

      }
    });
  }


  @override
  Widget build(BuildContext context) {
    pr = ProgressDialog(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, -3.0616171314629196e-17),
                        end: Alignment(0.5, 0.9999999999999999),
                        colors: [
                      ColorConstant.indigo600,
                      ColorConstant.indigo60052
                    ])),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath:
                                      ImageConstant.imgTopelipsesWhiteA700,
                                  height: getVerticalSize(123.00),
                                  width: getHorizontalSize(211.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 25, top: 51, right: 25),
                              child: Text("lbl_welcome_back".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 25, top: 9, right: 25),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(94.00)),
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgEllipse6,
                                      height: getVerticalSize(170.00),
                                      width: getHorizontalSize(188.00),
                                      fit: BoxFit.cover)))),
                      Container(
                        child:CustomTextFormField(
                          width: 324,
                          focusNode: FocusNode(),
                          controller: _emailController,
                          hintText: "msg_enter_your_email".tr,
                          margin: getMargin(left: 25, top: 54, right: 25),
                          alignment: Alignment.center,
                          onChanged: (value) {  },
                          ),),
                      Container(
                      child:CustomTextFormField(
                          width: 324,
                          focusNode: FocusNode(),
                          controller: _passwordController,
                          hintText: "msg_enter_your_password".tr,
                          margin: getMargin(left: 25, top: 37, right: 25),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          isObscureText: true,
                          onChanged: (value) {  },),),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 25, top: 31, right: 25),
                              child: Text("msg_forgot_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold14))),
                      Container(
                      child:SizedBox(
                        child: new CustomButton(
                          width: 343,
                          text: "lbl_login".tr,
                          margin: getMargin(
                              left: 25, top: 31, right: 25, bottom: 5),
                          onTap: onTapLogin,
                          alignment: Alignment.center)))
                    ]))));
  }

  onTapLogin() {

    _onLogin();
  }
}
