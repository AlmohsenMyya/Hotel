import '../../../core/app_export.dart';import '../models/forgot_password_model.dart';/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.forgotPasswordTypeOtpScreen, ); } 
 }
