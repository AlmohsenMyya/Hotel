import 'package:almohsen_s_hotel_s/presentation/sign_up_blank_screen/controller/sign_up_blank_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpBlankScreen.
///
/// This class ensures that the SignUpBlankController is created when the
/// SignUpBlankScreen is first loaded.
class SignUpBlankBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBlankController());
  }
}
