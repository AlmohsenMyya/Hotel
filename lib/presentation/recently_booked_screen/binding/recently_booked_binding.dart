import 'package:almohsen_s_hotel_s/presentation/recently_booked_screen/controller/recently_booked_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentlyBookedScreen.
///
/// This class ensures that the RecentlyBookedController is created when the
/// RecentlyBookedScreen is first loaded.
class RecentlyBookedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyBookedController());
  }
}
