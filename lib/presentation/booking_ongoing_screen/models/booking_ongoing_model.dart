import '../../../core/app_export.dart';import 'tickets1_item_model.dart';/// This class defines the variables used in the [booking_ongoing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingOngoingModel {Rx<List<Tickets1ItemModel>> tickets1ItemList = Rx([Tickets1ItemModel(royalePresident: "Royale President Hotel".obs,image:ImageConstant.imgRectangle.obs,parisFrance: "Paris, France".obs)]);

 }
