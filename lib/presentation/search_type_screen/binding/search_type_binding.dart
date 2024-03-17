import 'package:almohsen_s_hotel_s/presentation/search_type_screen/controller/search_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchTypeScreen.
///
/// This class ensures that the SearchTypeController is created when the
/// SearchTypeScreen is first loaded.
class SearchTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchTypeController());
  }
}
