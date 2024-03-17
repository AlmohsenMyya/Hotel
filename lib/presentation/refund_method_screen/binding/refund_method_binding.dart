import 'package:almohsen_s_hotel_s/presentation/refund_method_screen/controller/refund_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RefundMethodScreen.
///
/// This class ensures that the RefundMethodController is created when the
/// RefundMethodScreen is first loaded.
class RefundMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RefundMethodController());
  }
}
