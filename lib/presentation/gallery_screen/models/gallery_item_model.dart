import '../../../core/app_export.dart';/// This class is used in the [gallery_item_widget] screen.
class GalleryItemModel {GalleryItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle10);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
