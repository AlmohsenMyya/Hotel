import '../../../core/app_export.dart';import '../models/select_date_guest_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A controller class for the SelectDateGuestScreen.
///
/// This class manages the state of the SelectDateGuestScreen, including the
/// current selectDateGuestModelObj
class SelectDateGuestController extends GetxController {Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

@override void onReady() { Get.toNamed(AppRoutes.bookingNameScreen, ); } 
 }
