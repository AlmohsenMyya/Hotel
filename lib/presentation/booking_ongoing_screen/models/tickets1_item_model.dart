import '../../../core/app_export.dart';/// This class is used in the [tickets1_item_widget] screen.
class Tickets1ItemModel {Tickets1ItemModel({this.royalePresident, this.image, this.parisFrance, this.id, }) { royalePresident = royalePresident  ?? Rx("Royale President Hotel");image = image  ?? Rx(ImageConstant.imgRectangle);parisFrance = parisFrance  ?? Rx("Paris, France");id = id  ?? Rx(""); }

Rx<String>? royalePresident;

Rx<String>? image;

Rx<String>? parisFrance;

Rx<String>? id;

 }
