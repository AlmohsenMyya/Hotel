import 'package:almohsen_s_hotel_s/presentation/booking_name_screen/controller/booking_name_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingNameScreen.
///
/// This class ensures that the BookingNameController is created when the
/// BookingNameScreen is first loaded.
class BookingNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingNameController());
  }
}
