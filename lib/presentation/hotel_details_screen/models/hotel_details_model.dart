import '../../../core/app_export.dart';import 'photos_item_model.dart';import 'framenineteen_item_model.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';/// This class defines the variables used in the [hotel_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HotelDetailsModel {Rx<List<PhotosItemModel>> photosItemList = Rx([PhotosItemModel(rectangle:ImageConstant.imgRectangle7.obs),PhotosItemModel(rectangle:ImageConstant.imgRectangle8.obs),PhotosItemModel(rectangle:ImageConstant.imgRectangle9.obs)]);

Rx<List<FramenineteenItemModel>> framenineteenItemList = Rx([FramenineteenItemModel(jennyWilson:ImageConstant.imgEllipse1.obs,jennyWilson1: "Jenny Wilson".obs,dec: "Dec 10, 2024".obs,veryniceandcomfortab: "Very nice and comfortable hotel, thank you for accompanying my vacation!".obs),FramenineteenItemModel(jennyWilson:ImageConstant.imgEllipse148x48.obs,jennyWilson1: "Guy Hawkins".obs,dec: "Dec 10, 2024".obs,veryniceandcomfortab: "Very beautiful hotel, my family and I are very satisfied with the service!".obs),FramenineteenItemModel(jennyWilson:ImageConstant.imgEllipse11.obs,jennyWilson1: "Kristin Watson".obs,dec: "Dec 10, 2024".obs,veryniceandcomfortab: "The rooms are very comfortable and the natural views are amazing, can't wait to come back again!".obs)]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
