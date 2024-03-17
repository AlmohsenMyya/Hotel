import '../../../core/app_export.dart';import '../models/choose_payment_method_model.dart';/// A controller class for the ChoosePaymentMethodScreen.
///
/// This class manages the state of the ChoosePaymentMethodScreen, including the
/// current choosePaymentMethodModelObj
class ChoosePaymentMethodController extends GetxController {Rx<ChoosePaymentMethodModel> choosePaymentMethodModelObj = ChoosePaymentMethodModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.addNewCardScreen, );Get.toNamed(AppRoutes.addNewCardScreen, ); } 
 }
