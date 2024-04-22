import 'package:goncalo_s_application1/data/models/User.dart';
import 'package:flutter/material.dart';
import 'package:goncalo_s_application1/core/app_export.dart';
import 'package:goncalo_s_application1/presentation/janela_lateral_draweritem/janela_lateral_draweritem.dart';


class PGinaInicialScreen extends StatefulWidget {

  final User? user;

  const PGinaInicialScreen({Key? key, this.user}) : super(key: key);

  @override
  _PGinaInicialScreenState createState()  => _PGinaInicialScreenState();
}

class _PGinaInicialScreenState extends State<PGinaInicialScreen> {

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(right: 8),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(123.00),
                                        width: getHorizontalSize(211.00),


                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [

                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgTopelipsesWhiteA700,
                                                      height: getVerticalSize(
                                                          123.00),
                                                      width: getHorizontalSize(
                                                          211.00))),

                                              Align(
                                                  alignment: Alignment.topLeft,


                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 33,
                                                          top: 37,
                                                          right: 33,
                                                          bottom: 37),

                                                   child :GestureDetector(
                                                       onTap: () {
                                                         onTapJanela();
                                                       },

                                                      child: CommonImageView(

                                                          svgPath: ImageConstant
                                                              .imgMenu,
                                                          height:
                                                              getVerticalSize(
                                                                  22.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  21.00)))))

                                            ])),

                                    Padding(
                                        padding:
                                            getPadding(top: 15, bottom: 63),

                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(30.50)),


                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse8,
                                                height: getVerticalSize(45.00),
                                                width: getHorizontalSize(61.00),
                                                fit: BoxFit.cover)))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 114, top: 13, right: 114),
                          child: Text("lbl_mercedes_a_200".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold18)),
                      Padding(
                          padding: getPadding(left: 5, top: 13, right: 10),
                          child: CommonImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: getVerticalSize(173.00),
                              width: getHorizontalSize(364.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 13, top: 11, right: 13),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgLocation,
                                  height: getVerticalSize(25.00),
                                  width: getHorizontalSize(18.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 13, top: 11, right: 13),
                              child: Text("msg_rua_miguel_bombarda".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14))),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 50, bottom: 1),
                          decoration: AppDecoration.fillGray200,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapSafelineRating();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24, top: 39, right: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 2),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgStar,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00))),
                                              Padding(
                                                  padding: getPadding(left: 22),
                                                  child: Text(
                                                      "msg_safelane_rating".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium18))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    margin: getMargin(top: 40),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray400)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTirePressure();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24, top: 39, right: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 2),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00))),
                                              Padding(
                                                  padding: getPadding(left: 33),
                                                  child: Text(
                                                      "lbl_tire_pressure".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium18))
                                            ]))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    margin: getMargin(top: 47),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray400)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTripData();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 28,
                                            top: 40,
                                            right: 28,
                                            bottom: 48),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 9),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector,
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          16.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 38, top: 2),
                                                  child: Text(
                                                      "lbl_trip_data".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium18))
                                            ])))
                              ]))
                    ]))));
  }

  onTapSafelineRating() {
    Get.toNamed(AppRoutes.ratingScreen);
  }

  onTapTirePressure() {
    Get.toNamed(AppRoutes.pressaoPneusScreen);
  }

  onTapTripData() {
    Get.toNamed(AppRoutes.informaOesViagemScreen);
  }

  onTapJanela() {
    Navigator.push(context,
        MaterialPageRoute(builder:(content) => JanelaLateralDraweritem(user:widget.user)));
  }
}
