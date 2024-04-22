import 'package:fluttertoast/fluttertoast.dart';
import 'package:goncalo_s_application1/Config.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'controller/registo_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/core/utils/validation_functions.dart';
import 'package:goncalo_s_application1/widgets/custom_button.dart';
import 'package:goncalo_s_application1/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;

class RegistoScreen extends StatefulWidget {

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistoScreen> {
  late ProgressDialog pr;
  TextEditingController _nomeController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordControllera = new TextEditingController();
  TextEditingController _passwordControllerb = new TextEditingController();
  //double screenHeight, screenWidth;
 // bool _isChecked = false;
  //bool _obscureText = true;


  void _onRegister() {
    String _nome = _nomeController.text.toString();
    String _email = _emailController.text.toString();
    String _passworda = _passwordControllera.text.toString();
    String _passwordb = _passwordControllerb.text.toString();

    if (_nome.isEmpty ||
        _email.isEmpty ||
        _passworda.isEmpty ||
        _passwordb.isEmpty) {
      Fluttertoast.showToast(
          msg: "Email/password is empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }
    if (!validateEmail(_email)) {
      Fluttertoast.showToast(
          msg: "Check your email format",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }
    if (_passworda != _passwordb) {
      Fluttertoast.showToast(
          msg: "Please use the same password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: Text("Register new user"),
            content: Text("Are your sure?"),
            actions: [
              TextButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                  _registerUser(_nome, _email, _passworda);
                },
              ),
              TextButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
    }


  Future<void> _registerUser(String nome, String email, String password) async {
    pr = ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: true, showLogs: true);
    await pr.show();
    http.post(
        Uri.parse(CONFIG.SERVER + "/scripts/regist.php"),
        body: {
          "nome": nome,
          "email": email,
          "password": password
        }).then((response) {
      print(response.body);
      if (response.body == "success") {
        Fluttertoast.showToast(
            msg:
            "Registration Success.",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        pr.hide().then((isHidden) {
          print(isHidden);
        });
        // FocusScope.of(context).unfocus();
        // _passwordControllerb.clear();
        Navigator.pop(context);
        Get.toNamed(AppRoutes.loginScreen);
        /*Navigator.push(
            context, MaterialPageRoute(builder: (content) => LoginScreen()));*/
      } else {
        Fluttertoast.showToast(
            msg: "Registration Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        pr.hide().then((isHidden) {
          print(isHidden);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(right: 10),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgTopelipses,
                                  height: getVerticalSize(123.00),
                                  width: getHorizontalSize(211.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 92, top: 51, right: 92),
                              child: Text("lbl_welcome_onboard".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold20))),
                      CustomTextFormField(
                          width: 324,
                          focusNode: FocusNode(),
                          controller: _nomeController,
                          hintText: "msg_enter_your_full".tr,
                          margin: getMargin(left: 25, top: 88, right: 25),
                          alignment: Alignment.centerLeft,
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          }, onChanged: (value) {  },),
                      CustomTextFormField(
                          width: 324,
                          focusNode: FocusNode(),
                          controller: _emailController ,
                          hintText: "msg_enter_your_email".tr,
                          margin: getMargin(left: 25, top: 37, right: 25),
                          alignment: Alignment.centerLeft,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "Please enter valid email";
                            }
                            return null;
                          }, onChanged: (value) {  },),
                      CustomTextFormField(
                          width: 324,
                          focusNode: FocusNode(),
                          controller: _passwordControllera,
                          hintText: "lbl_enter_password".tr,
                          margin: getMargin(left: 25, top: 37, right: 25),
                          alignment: Alignment.centerLeft,
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          isObscureText: true, onChanged: (value) {  },),
                      CustomTextFormField(
                          width: 324,
                          focusNode: FocusNode(),
                          controller: _passwordControllerb,
                          hintText: "msg_confirm_password".tr,
                          margin: getMargin(left: 25, top: 37, right: 25),
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerLeft,
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          isObscureText: true, onChanged: (value) {  },),
                       Container(
                       child:SizedBox(
                       child: new CustomButton(
                          onTap: _onRegister,
                          width: 343,
                          text: "lbl_register".tr,
                          margin: getMargin(left: 25, top: 55, right: 25),
                          alignment: Alignment.center))),

                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 25, top: 37, right: 25, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.teal400,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: TextStyle(
                                                color: ColorConstant.teal400,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: "  ".tr,
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left))))
                    ]))));
  }

    bool validateEmail(String value) {
      RegExp regex = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      return (!regex.hasMatch(value)) ? false : true;
    }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
