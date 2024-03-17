import 'package:almohsen_s_hotel_s/presentation/hotel_details_screen/controller/hotel_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HotelDetailsScreen.
///
/// This class ensures that the HotelDetailsController is created when the
/// HotelDetailsScreen is first loaded.
class HotelDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HotelDetailsController());
  }
}
