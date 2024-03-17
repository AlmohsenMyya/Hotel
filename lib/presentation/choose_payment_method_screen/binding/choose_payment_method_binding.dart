import 'package:almohsen_s_hotel_s/presentation/choose_payment_method_screen/controller/choose_payment_method_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChoosePaymentMethodScreen.
///
/// This class ensures that the ChoosePaymentMethodController is created when the
/// ChoosePaymentMethodScreen is first loaded.
class ChoosePaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePaymentMethodController());
  }
}
