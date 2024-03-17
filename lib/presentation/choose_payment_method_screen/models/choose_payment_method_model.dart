import '../../../core/app_export.dart';import 'choosepaymentmethod_item_model.dart';/// This class defines the variables used in the [choose_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChoosePaymentMethodModel {Rx<List<ChoosepaymentmethodItemModel>> choosepaymentmethodItemList = Rx([ChoosepaymentmethodItemModel(paypal:ImageConstant.imgFrameLightBlue600.obs,paypal1: "Paypal".obs),ChoosepaymentmethodItemModel(paypal:ImageConstant.imgFrame.obs,paypal1: "Google Pay".obs),ChoosepaymentmethodItemModel(paypal:ImageConstant.imgFrameWhiteA70032x32.obs,paypal1: "Apple Pay".obs)]);

 }
