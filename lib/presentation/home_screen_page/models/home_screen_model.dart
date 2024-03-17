import '../../../core/app_export.dart';import 'hotels_item_model.dart';import 'sixty_item_model.dart';/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {Rx<List<HotelsItemModel>> hotelsItemList = Rx([HotelsItemModel(image:ImageConstant.imgRectangle3.obs,emeraldaDeHotel: "Emeralda De Hotel".obs,parisFrance: "Paris, France".obs,price: "29".obs,perNight: "/ per night".obs),HotelsItemModel(image:ImageConstant.imgRectangle3400x300.obs,emeraldaDeHotel: "Emeralda De Hotel".obs,parisFrance: "Paris, France".obs,price: "29".obs,perNight: "/ per night".obs)]);

Rx<List<SixtyItemModel>> sixtyItemList = Rx([SixtyItemModel(martinezCannes:ImageConstant.imgRectangle4.obs,presidentHotel: "Martinez Cannes".obs,parisFrance: "Paris, France".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "32".obs,night: "/ night".obs),SixtyItemModel(martinezCannes:ImageConstant.imgRectangle41.obs,presidentHotel: "Palazzo Versace".obs,parisFrance: "Paris, France".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "36".obs,night: "/ night".obs)]);

 }
