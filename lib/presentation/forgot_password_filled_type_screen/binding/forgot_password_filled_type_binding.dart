import 'package:almohsen_s_hotel_s/presentation/forgot_password_filled_type_screen/controller/forgot_password_filled_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgotPasswordFilledTypeScreen.
///
/// This class ensures that the ForgotPasswordFilledTypeController is created when the
/// ForgotPasswordFilledTypeScreen is first loaded.
class ForgotPasswordFilledTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordFilledTypeController());
  }
}
