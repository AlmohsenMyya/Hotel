import '../../../core/app_export.dart';import '../models/booking_name_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingNameScreen.
///
/// This class manages the state of the BookingNameScreen, including the
/// current bookingNameModelObj
class BookingNameController extends GetxController {TextEditingController bookingNameLabel1Controller = TextEditingController();

TextEditingController bookingNameLabel2Controller = TextEditingController();

TextEditingController bookingNameDateController = TextEditingController();

TextEditingController bookingNameEmailController = TextEditingController();

TextEditingController bookingNamePhoneController = TextEditingController();

Rx<BookingNameModel> bookingNameModelObj = BookingNameModel().obs;

@override void onClose() { super.onClose(); bookingNameLabel1Controller.dispose(); bookingNameLabel2Controller.dispose(); bookingNameDateController.dispose(); bookingNameEmailController.dispose(); bookingNamePhoneController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.choosePaymentMethodScreen, ); } 
 }
