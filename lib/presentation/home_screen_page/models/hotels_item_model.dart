import '../../../core/app_export.dart';/// This class is used in the [hotels_item_widget] screen.
class HotelsItemModel {HotelsItemModel({this.image, this.emeraldaDeHotel, this.parisFrance, this.price, this.perNight, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle3);emeraldaDeHotel = emeraldaDeHotel  ?? Rx("Emeralda De Hotel");parisFrance = parisFrance  ?? Rx("Paris, France");price = price  ?? Rx("29");perNight = perNight  ?? Rx("/ per night");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? emeraldaDeHotel;

Rx<String>? parisFrance;

Rx<String>? price;

Rx<String>? perNight;

Rx<String>? id;

 }
