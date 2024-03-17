import '../../../core/app_export.dart';/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {NotificationsItemModel({this.youHaveCanceled, this.image, this.hotelBookingCanceled, this.id, }) { youHaveCanceled = youHaveCanceled  ?? Rx("You have canceled your hotel booking");image = image  ?? Rx(ImageConstant.imgGroupWhiteA700);hotelBookingCanceled = hotelBookingCanceled  ?? Rx("Hotel Booking Canceled");id = id  ?? Rx(""); }

Rx<String>? youHaveCanceled;

Rx<String>? image;

Rx<String>? hotelBookingCanceled;

Rx<String>? id;

 }
