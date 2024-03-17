import '../../../core/app_export.dart';import 'cardadded_item_model.dart';/// This class defines the variables used in the [card_added_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardAddedModel {Rx<List<CardaddedItemModel>> cardaddedItemList = Rx([CardaddedItemModel(paypal:ImageConstant.imgFrameLightBlue600.obs,paypal1: "Paypal".obs),CardaddedItemModel(paypal:ImageConstant.imgFrame.obs,paypal1: "Google Pay".obs),CardaddedItemModel(paypal:ImageConstant.imgFrameWhiteA70032x32.obs,paypal1: "Apple Pay".obs)]);

 }
