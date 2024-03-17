import '../../../core/app_export.dart';import 'refundmethod_item_model.dart';/// This class defines the variables used in the [refund_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RefundMethodModel {Rx<List<RefundmethodItemModel>> refundmethodItemList = Rx([RefundmethodItemModel(paypal:ImageConstant.imgFrameLightBlue600.obs,paypal1: "Paypal".obs,paypal2:ImageConstant.imgContrastPrimary20x20.obs),RefundmethodItemModel(paypal:ImageConstant.imgFrame.obs,paypal1: "Google Pay".obs,paypal2:ImageConstant.imgContrastPrimary20x20.obs),RefundmethodItemModel(paypal:ImageConstant.imgFrameWhiteA70032x32.obs,paypal1: "Apple Pay".obs,paypal2:ImageConstant.imgContrastPrimary20x20.obs),RefundmethodItemModel(paypal:ImageConstant.imgImage27x44.obs,paypal1: "•••• •••• •••• •••• 4679".obs)]);

 }
