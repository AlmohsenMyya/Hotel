import 'package:almohsen_s_hotel_s/presentation/gallery_screen/controller/gallery_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GalleryScreen.
///
/// This class ensures that the GalleryController is created when the
/// GalleryScreen is first loaded.
class GalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GalleryController());
  }
}
