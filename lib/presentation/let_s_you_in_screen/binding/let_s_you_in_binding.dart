import 'package:almohsen_s_hotel_s/presentation/let_s_you_in_screen/controller/let_s_you_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LetSYouInScreen.
///
/// This class ensures that the LetSYouInController is created when the
/// LetSYouInScreen is first loaded.
class LetSYouInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetSYouInController());
  }
}
