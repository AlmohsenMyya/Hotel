import 'package:almohsen_s_hotel_s/presentation/forgot_password_type_otp_screen/controller/forgot_password_type_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgotPasswordTypeOtpScreen.
///
/// This class ensures that the ForgotPasswordTypeOtpController is created when the
/// ForgotPasswordTypeOtpScreen is first loaded.
class ForgotPasswordTypeOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordTypeOtpController());
  }
}
