import '../../../core/app_export.dart';import '../models/recently_booked_model.dart';/// A controller class for the RecentlyBookedScreen.
///
/// This class manages the state of the RecentlyBookedScreen, including the
/// current recentlyBookedModelObj
class RecentlyBookedController extends GetxController {Rx<RecentlyBookedModel> recentlyBookedModelObj = RecentlyBookedModel().obs;

 }
