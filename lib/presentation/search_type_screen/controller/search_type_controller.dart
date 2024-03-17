import '../../../core/app_export.dart';
import '../models/search_type_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTypeScreen.
///
/// This class manages the state of the SearchTypeScreen, including the
/// current searchTypeModelObj
class SearchTypeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTypeModel> searchTypeModelObj = SearchTypeModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
