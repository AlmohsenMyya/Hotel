import '../../../core/app_export.dart';import 'tickets_item_model.dart';/// This class defines the variables used in the [booking_completed_page],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingCompletedModel {Rx<List<TicketsItemModel>> ticketsItemList = Rx([TicketsItemModel(bulgariResort:ImageConstant.imgRectangle.obs,bulgariResort1: "Bulgari Resort".obs,parisFrance: "Paris, France".obs,yeayyouhavecompletedit: "Yeay, you have completed it!".obs),TicketsItemModel(bulgariResort:ImageConstant.imgRectangle100x100.obs,bulgariResort1: "Hotel Martinez Cannes".obs,parisFrance: "Amsterdam, Netherlands".obs,yeayyouhavecompletedit: "Yeay, you have completed it!".obs)]);

 }
