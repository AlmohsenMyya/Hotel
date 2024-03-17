import 'package:almohsen_s_hotel_s/presentation/notification_settings_screen/controller/notification_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationSettingsScreen.
///
/// This class ensures that the NotificationSettingsController is created when the
/// NotificationSettingsScreen is first loaded.
class NotificationSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationSettingsController());
  }
}
