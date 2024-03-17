import 'package:almohsen_s_hotel_s/presentation/confirm_payment_screen/controller/confirm_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfirmPaymentScreen.
///
/// This class ensures that the ConfirmPaymentController is created when the
/// ConfirmPaymentScreen is first loaded.
class ConfirmPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmPaymentController());
  }
}
