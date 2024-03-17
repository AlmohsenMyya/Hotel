import '../../../core/app_export.dart';import 'tickets2_item_model.dart';/// This class defines the variables used in the [booking_cancelled_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCancelledModel {Rx<List<Tickets2ItemModel>> tickets2ItemList = Rx([Tickets2ItemModel(palmsCasinoResort:ImageConstant.imgRectangle.obs,palmsCasinoResort1: "Palms Casino Resort".obs,londonUnitedKingdom: "London, United Kingdom".obs,youCanceledThis: "You canceled this hotel booking".obs),Tickets2ItemModel(palmsCasinoResort:ImageConstant.imgRectangle100x100.obs,palmsCasinoResort1: "The Mark Hotel".obs,londonUnitedKingdom: "Luxemburg, Germany".obs,youCanceledThis: "You canceled this hotel booking".obs)]);

 }
