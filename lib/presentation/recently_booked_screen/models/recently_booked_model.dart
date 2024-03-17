import '../../../core/app_export.dart';import 'recentlybookedlist_item_model.dart';/// This class defines the variables used in the [recently_booked_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecentlyBookedModel {Rx<List<RecentlybookedlistItemModel>> recentlybookedlistItemList = Rx([RecentlybookedlistItemModel(martinezCannes:ImageConstant.imgRectangle4.obs,presidentHotel: "Martinez Cannes".obs,parisFrance: "Paris, France".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "32".obs,night: "/ night".obs)]);

 }
