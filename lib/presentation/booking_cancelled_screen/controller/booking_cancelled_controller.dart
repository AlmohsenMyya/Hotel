import '../../../core/app_export.dart';
import '../models/booking_cancelled_model.dart';

/// A controller class for the BookingCancelledScreen.
///
/// This class manages the state of the BookingCancelledScreen, including the
/// current bookingCancelledModelObj
class BookingCancelledController extends GetxController {
  Rx<BookingCancelledModel> bookingCancelledModelObj =
      BookingCancelledModel().obs;
}
