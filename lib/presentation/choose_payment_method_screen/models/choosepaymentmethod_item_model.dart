import '../../../core/app_export.dart';/// This class is used in the [choosepaymentmethod_item_widget] screen.
class ChoosepaymentmethodItemModel {ChoosepaymentmethodItemModel({this.paypal, this.paypal1, this.id, }) { paypal = paypal  ?? Rx(ImageConstant.imgFrameLightBlue600);paypal1 = paypal1  ?? Rx("Paypal");id = id  ?? Rx(""); }

Rx<String>? paypal;

Rx<String>? paypal1;

Rx<String>? id;

 }
