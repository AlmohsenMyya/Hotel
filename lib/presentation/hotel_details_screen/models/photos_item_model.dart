import '../../../core/app_export.dart';/// This class is used in the [photos_item_widget] screen.
class PhotosItemModel {PhotosItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle7);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
