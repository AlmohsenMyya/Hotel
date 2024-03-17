import '../../../core/app_export.dart';import '../models/card_added_model.dart';/// A controller class for the CardAddedScreen.
///
/// This class manages the state of the CardAddedScreen, including the
/// current cardAddedModelObj
class CardAddedController extends GetxController {Rx<CardAddedModel> cardAddedModelObj = CardAddedModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.confirmPaymentScreen, ); } 
 }
