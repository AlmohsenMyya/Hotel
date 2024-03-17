import 'package:almohsen_s_hotel_s/presentation/view_ticket_screen/controller/view_ticket_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewTicketScreen.
///
/// This class ensures that the ViewTicketController is created when the
/// ViewTicketScreen is first loaded.
class ViewTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewTicketController());
  }
}
