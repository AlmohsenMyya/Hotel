import '../../../core/app_export.dart';import '../models/home_screen_container_model.dart';/// A controller class for the HomeScreenContainerScreen.
///
/// This class manages the state of the HomeScreenContainerScreen, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {Rx<HomeScreenContainerModel> homeScreenContainerModelObj = HomeScreenContainerModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.notificationsScreen, ); } 
 }
