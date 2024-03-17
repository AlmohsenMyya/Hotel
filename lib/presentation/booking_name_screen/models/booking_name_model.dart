import 'bookingnamechipview_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [booking_name_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingNameModel {Rx<List<BookingnamechipviewItemModel>> bookingnamechipviewItemList = Rx(List.generate(3,(index) =>BookingnamechipviewItemModel()));

 }
