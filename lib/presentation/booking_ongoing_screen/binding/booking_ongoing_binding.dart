import 'package:almohsen_s_hotel_s/presentation/booking_ongoing_screen/controller/booking_ongoing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingOngoingScreen.
///
/// This class ensures that the BookingOngoingController is created when the
/// BookingOngoingScreen is first loaded.
class BookingOngoingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingOngoingController());
  }
}
