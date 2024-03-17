import '../../../core/app_export.dart';
import '../models/search_page_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchPageTabContainerPage.
///
/// This class manages the state of the SearchPageTabContainerPage, including the
/// current searchPageTabContainerModelObj
class SearchPageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  SearchPageTabContainerController(this.searchPageTabContainerModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<SearchPageTabContainerModel> searchPageTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
