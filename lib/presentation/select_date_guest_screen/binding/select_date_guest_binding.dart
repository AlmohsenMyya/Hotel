import 'package:almohsen_s_hotel_s/presentation/select_date_guest_screen/controller/select_date_guest_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectDateGuestScreen.
///
/// This class ensures that the SelectDateGuestController is created when the
/// SelectDateGuestScreen is first loaded.
class SelectDateGuestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectDateGuestController());
  }
}
