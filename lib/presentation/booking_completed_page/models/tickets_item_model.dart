import '../../../core/app_export.dart';/// This class is used in the [tickets_item_widget] screen.
class TicketsItemModel {TicketsItemModel({this.bulgariResort, this.bulgariResort1, this.parisFrance, this.yeayyouhavecompletedit, this.id, }) { bulgariResort = bulgariResort  ?? Rx(ImageConstant.imgRectangle);bulgariResort1 = bulgariResort1  ?? Rx("Bulgari Resort");parisFrance = parisFrance  ?? Rx("Paris, France");yeayyouhavecompletedit = yeayyouhavecompletedit  ?? Rx("Yeay, you have completed it!");id = id  ?? Rx(""); }

Rx<String>? bulgariResort;

Rx<String>? bulgariResort1;

Rx<String>? parisFrance;

Rx<String>? yeayyouhavecompletedit;

Rx<String>? id;

 }
