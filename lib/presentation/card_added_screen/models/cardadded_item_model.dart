import '../../../core/app_export.dart';/// This class is used in the [cardadded_item_widget] screen.
class CardaddedItemModel {CardaddedItemModel({this.paypal, this.paypal1, this.id, }) { paypal = paypal  ?? Rx(ImageConstant.imgFrameLightBlue600);paypal1 = paypal1  ?? Rx("Paypal");id = id  ?? Rx(""); }

Rx<String>? paypal;

Rx<String>? paypal1;

Rx<String>? id;

 }
