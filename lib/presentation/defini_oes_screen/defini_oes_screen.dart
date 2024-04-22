import 'package:fluttertoast/fluttertoast.dart';
import 'package:goncalo_s_application1/Config.dart';
import 'package:goncalo_s_application1/data/models/User.dart';
import 'package:progress_dialog/progress_dialog.dart';
import '../../widgets/text_dialog_widget.dart';
import 'controller/defini_oes_controller.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class DefiniOesScreen extends StatefulWidget {
  final User? user;

  const DefiniOesScreen({Key? key,  this.user}) : super(key: key);

  @override
  _DefiniOesScreenState createState() => _DefiniOesScreenState();
}

class _DefiniOesScreenState extends State<DefiniOesScreen>{
  late ProgressDialog pr;

  @override
  Widget build(BuildContext context) {

    _changeEmail(String novoEmail) async {
      pr = ProgressDialog(context);
      pr.style(
        message: 'Updating email...',
        borderRadius: 5.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
      );
      pr = ProgressDialog(context,
          type: ProgressDialogType.Normal, isDismissible: true, showLogs: true);
      await pr.show();
      http.post(
          Uri.parse(
              CONFIG.SERVER +"/scripts/changeEmail.php"),
          body: {
            "novoEmail": novoEmail,
            "email": widget.user!.email
          }).then((response) {
        if (response.body == "success") {
          pr.hide().then((isHidden) {
            print(isHidden);
          });
          Fluttertoast.showToast(
              msg: " Update Success",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);

        } else {
          Fluttertoast.showToast(
              msg: "Update Failed",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      });
    }

    _changeName(String novoNome) async {
      pr = ProgressDialog(context);
      pr.style(
        message: 'Updating name...',
        borderRadius: 5.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
      );
      pr = ProgressDialog(context,
          type: ProgressDialogType.Normal, isDismissible: true, showLogs: true);
      await pr.show();
      http.post(
          Uri.parse(
              CONFIG.SERVER +"/scripts/changeName.php"),
          body: {
            "novoNome": novoNome,
            "email": widget.user!.email
          }).then((response) {
        if (response.body == "success") {
          pr.hide().then((isHidden) {
            print(isHidden);
          });
          Fluttertoast.showToast(
              msg: " Update Success",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);

        } else {
          Fluttertoast.showToast(
              msg: "Update Failed",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      });
    }


    Future editName() async {
      final novoNome = await showTextDialog(
        context,
        title: 'Change Name',
        value: widget.user!.nome!,

      );

      widget.user?.nome = novoNome;
      _changeName(novoNome);
    }

    Future editEmail() async {
      final novoEmail = await showTextDialog(
        context,
        title: 'Change Email',
        value: widget.user!.email!,

      );
      widget.user?.email = novoEmail;
      _changeEmail(novoEmail);

    }


    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.bluegray100,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 33, top: 5, right: 33),
                          child: InkWell(
                              onTap: () {
                                onTapImgClose();
                              },
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(24.00),
                                  width: getSize(24.00))))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 33, top: 1, right: 33),
                          child: Text("lbl_settings".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold18Black900))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(top: 57, bottom: 5),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 4, right: 20),
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgRectangle9,
                                        height: getVerticalSize(76.00),
                                        width: getHorizontalSize(69.00))),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 16, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_name".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold18)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, bottom: 1),
                                              child: Text(
                                                  widget.user!.nome!,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular18)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 8, top: 4, bottom: 5),

                                              child: InkWell(
                                                  onTap: () {
                                                    editName();
                                                  },
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                  height: getSize(18.00),
                                                  width: getSize(18.00))))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20, top: 32, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: Text("lbl_email".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold18Black900)),
                                              Padding(

                                                  padding: getPadding(
                                                      left: 14, top: 2),
                                                  child: Text(
                                                      widget.user!.email!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular18)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 4,
                                                      bottom: 7),

                                                  child: InkWell(
                                                      onTap: () {
                                                        editEmail();
                                                      },
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgPlus,
                                                      height: getSize(18.00),
                                                      width: getSize(18.00))))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 33, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text("lbl_change_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold18Black900),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12, top: 1, bottom: 7),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                  height: getSize(18.00),
                                                  width: getSize(18.00)))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 32, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl_lenguage".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "lbl_english".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(18),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 13, top: 1, bottom: 7),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                  height: getSize(18.00),
                                                  width: getSize(18.00)))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 30, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("lbl_about_us".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold18Black900),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 4, bottom: 4),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                  height: getSize(18.00),
                                                  width: getSize(18.00)))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 34, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text("msg_change_profile_picture".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold18Black900),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12, top: 3, bottom: 5),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                  height: getSize(18.00),
                                                  width: getSize(18.00)))
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 12,
                                            right: 20,
                                            bottom: 5),
                                        child: Text("lbl_delete_account".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold14Black900)))
                              ])))
                ])));



  }



  onTapImgClose() {
    Get.back();
  }
}
