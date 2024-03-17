import 'package:almohsen_s_hotel_s/presentation/security_screen/controller/security_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SecurityScreen.
///
/// This class ensures that the SecurityController is created when the
/// SecurityScreen is first loaded.
class SecurityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityController());
  }
}
