import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'models/bookingnamechipview_item_model.dart';import '../booking_name_screen/widgets/bookingnamechipview_item_widget.dart';import 'package:almohsen_s_hotel_s/widgets/custom_text_form_field.dart';import 'package:almohsen_s_hotel_s/core/utils/validation_functions.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/booking_name_controller.dart';
// ignore_for_file: must_be_immutable
class BookingNameScreen extends GetWidget<BookingNameController> {BookingNameScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [_buildBookingNameChipView(), SizedBox(height: 30.v), _buildBookingNameLabel1(), SizedBox(height: 24.v), _buildBookingNameLabel2(), SizedBox(height: 24.v), _buildBookingNameDate(), SizedBox(height: 24.v), _buildBookingNameEmail(), SizedBox(height: 24.v), _buildBookingNamePhone(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildContinueButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v)), title: AppbarTitle(text: "msg_name_of_reservation".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildBookingNameChipView() { return Obx(() => Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(controller.bookingNameModelObj.value.bookingnamechipviewItemList.value.length, (index) {BookingnamechipviewItemModel model = controller.bookingNameModelObj.value.bookingnamechipviewItemList.value[index]; return BookingnamechipviewItemWidget(model);}))); } 
/// Section Widget
Widget _buildBookingNameLabel1() { return CustomTextFormField(controller: controller.bookingNameLabel1Controller, hintText: "lbl_daniel_austin".tr); } 
/// Section Widget
Widget _buildBookingNameLabel2() { return CustomTextFormField(controller: controller.bookingNameLabel2Controller, hintText: "lbl_daniel".tr); } 
/// Section Widget
Widget _buildBookingNameDate() { return CustomTextFormField(controller: controller.bookingNameDateController, hintText: "lbl_12_27_1995".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 22.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsup, height: 16.v, width: 15.h)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildBookingNameEmail() { return CustomTextFormField(controller: controller.bookingNameEmailController, hintText: "lbl_user_domain_com".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary15x15, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildBookingNamePhone() { return CustomTextFormField(controller: controller.bookingNamePhoneController, hintText: "msg_1_123_456_789_000".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(20.h, 19.v, 12.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsupGray5001, height: 18.v, width: 48.h)), prefixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v)); } 
/// Section Widget
Widget _buildContinueButton() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinueButton();}); } 
/// Navigates to the choosePaymentMethodScreen when the action is triggered.
onTapContinueButton() { Get.toNamed(AppRoutes.choosePaymentMethodScreen, ); } 
 }
