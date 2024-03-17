import 'package:almohsen_s_hotel_s/presentation/card_added_screen/controller/card_added_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CardAddedScreen.
///
/// This class ensures that the CardAddedController is created when the
/// CardAddedScreen is first loaded.
class CardAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardAddedController());
  }
}
