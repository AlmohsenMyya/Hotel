import '../../../core/app_export.dart';
import '../models/booking_completed_model.dart';

/// A controller class for the BookingCompletedPage.
///
/// This class manages the state of the BookingCompletedPage, including the
/// current bookingCompletedModelObj
class BookingCompletedController extends GetxController {
  BookingCompletedController(this.bookingCompletedModelObj);

  Rx<BookingCompletedModel> bookingCompletedModelObj;
}
