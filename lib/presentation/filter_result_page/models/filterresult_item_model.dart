import '../../../core/app_export.dart';/// This class is used in the [filterresult_item_widget] screen.
class FilterresultItemModel {FilterresultItemModel({this.presidentHotel, this.presidentHotel1, this.parisFrance, this.fortyEight, this.reviews, this.price, this.night, this.id, }) { presidentHotel = presidentHotel  ?? Rx(ImageConstant.imgRectangle);presidentHotel1 = presidentHotel1  ?? Rx("President Hotel");parisFrance = parisFrance  ?? Rx("Paris, France");fortyEight = fortyEight  ?? Rx("4.8");reviews = reviews  ?? Rx("(4,378 reviews)");price = price  ?? Rx("35");night = night  ?? Rx("/ night");id = id  ?? Rx(""); }

Rx<String>? presidentHotel;

Rx<String>? presidentHotel1;

Rx<String>? parisFrance;

Rx<String>? fortyEight;

Rx<String>? reviews;

Rx<String>? price;

Rx<String>? night;

Rx<String>? id;

 }
