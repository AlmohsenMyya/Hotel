import '../../../core/app_export.dart';/// This class is used in the [mybookmarks_item_widget] screen.
class MybookmarksItemModel {MybookmarksItemModel({this.image, this.presidentMilaDe, this.fortyEight, this.parisFrance, this.price, this.night, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle4100x100);presidentMilaDe = presidentMilaDe  ?? Rx("De Paris Monte-Carlo Hotel");fortyEight = fortyEight  ?? Rx("4.6");parisFrance = parisFrance  ?? Rx("Paris, France");price = price  ?? Rx("29");night = night  ?? Rx("/ night");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? presidentMilaDe;

Rx<String>? fortyEight;

Rx<String>? parisFrance;

Rx<String>? price;

Rx<String>? night;

Rx<String>? id;

 }
