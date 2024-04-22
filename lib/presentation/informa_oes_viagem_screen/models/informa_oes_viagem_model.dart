import 'package:get/get.dart';
import 'listcar_item_model.dart';
import 'listcar_one_item_model.dart';
import 'listcar_two_item_model.dart';
import 'listdashboard_one_item_model.dart';

class InformaOesViagemModel {
  RxList<ListcarItemModel> listcarItemList =
      RxList.filled(3, ListcarItemModel());

  RxList<ListcarOneItemModel> listcarOneItemList =
      RxList.filled(4, ListcarOneItemModel());

  RxList<ListcarTwoItemModel> listcarTwoItemList =
      RxList.filled(2, ListcarTwoItemModel());

  RxList<ListdashboardOneItemModel> listdashboardOneItemList =
      RxList.filled(2, ListdashboardOneItemModel());
}
