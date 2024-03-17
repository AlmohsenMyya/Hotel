import '../../../core/app_export.dart';import '../models/confirm_payment_model.dart';/// A controller class for the ConfirmPaymentScreen.
///
/// This class manages the state of the ConfirmPaymentScreen, including the
/// current confirmPaymentModelObj
class ConfirmPaymentController extends GetxController {Rx<ConfirmPaymentModel> confirmPaymentModelObj = ConfirmPaymentModel().obs;

@override void onReady() { // TODO: implement Actions
Get.toNamed(AppRoutes.cardAddedScreen, ); } 
 }
