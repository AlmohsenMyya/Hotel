import '../../../core/app_export.dart';import 'searchpagelist_item_model.dart';/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {Rx<List<SearchpagelistItemModel>> searchpagelistItemList = Rx([SearchpagelistItemModel(presidentHotel:ImageConstant.imgRectangle.obs,presidentHotel1: "President Hotel".obs,parisFrance: "Paris, France".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "35".obs,night: "/ night".obs),SearchpagelistItemModel(presidentHotel:ImageConstant.imgRectangle4100x100.obs,presidentHotel1: "Palms Casino".obs,parisFrance: "Paris, France".obs,price: "29".obs,night: "/ night".obs),SearchpagelistItemModel(presidentHotel:ImageConstant.imgRectangle41.obs,presidentHotel1: "Palazzo Versace".obs,parisFrance: "Paris, France".obs,fortyEight: "4.8".obs,reviews: "(4,378 reviews)".obs,price: "36".obs,night: "/ night".obs)]);

 }
