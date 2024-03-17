import '../../../core/app_export.dart';/// This class is used in the [recentlybookedlist_item_widget] screen.
class RecentlybookedlistItemModel {RecentlybookedlistItemModel({this.martinezCannes, this.presidentHotel, this.parisFrance, this.fortyEight, this.reviews, this.price, this.night, this.id, }) { martinezCannes = martinezCannes  ?? Rx(ImageConstant.imgRectangle4);presidentHotel = presidentHotel  ?? Rx("Martinez Cannes");parisFrance = parisFrance  ?? Rx("Paris, France");fortyEight = fortyEight  ?? Rx("4.8");reviews = reviews  ?? Rx("(4,378 reviews)");price = price  ?? Rx("32");night = night  ?? Rx("/ night");id = id  ?? Rx(""); }

Rx<String>? martinezCannes;

Rx<String>? presidentHotel;

Rx<String>? parisFrance;

Rx<String>? fortyEight;

Rx<String>? reviews;

Rx<String>? price;

Rx<String>? night;

Rx<String>? id;

 }
