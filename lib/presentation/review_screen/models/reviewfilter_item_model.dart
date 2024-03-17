import '../../../core/app_export.dart';/// This class is used in the [reviewfilter_item_widget] screen.
class ReviewfilterItemModel {ReviewfilterItemModel({this.all, this.all1, this.id, }) { all = all  ?? Rx(ImageConstant.imgSignal);all1 = all1  ?? Rx("All");id = id  ?? Rx(""); }

Rx<String>? all;

Rx<String>? all1;

Rx<String>? id;

 }
