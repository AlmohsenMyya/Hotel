import '../../../core/app_export.dart';/// This class is used in the [refundmethod_item_widget] screen.
class RefundmethodItemModel {RefundmethodItemModel({this.paypal, this.paypal1, this.paypal2, this.id, }) { paypal = paypal  ?? Rx(ImageConstant.imgFrameLightBlue600);paypal1 = paypal1  ?? Rx("Paypal");paypal2 = paypal2  ?? Rx(ImageConstant.imgContrastPrimary20x20);id = id  ?? Rx(""); }

Rx<String>? paypal;

Rx<String>? paypal1;

Rx<String>? paypal2;

Rx<String>? id;

 }
