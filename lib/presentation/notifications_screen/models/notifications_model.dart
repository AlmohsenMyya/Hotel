import '../../../core/app_export.dart';import 'notifications_item_model.dart';/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {Rx<List<NotificationsItemModel>> notificationsItemList = Rx([NotificationsItemModel(youHaveCanceled: "You have canceled your hotel booking".obs,image:ImageConstant.imgGroupWhiteA700.obs,hotelBookingCanceled: "Hotel Booking Canceled".obs),NotificationsItemModel(hotelBookingCanceled: "Laluna Hotel booking was successful!".obs)]);

 }
