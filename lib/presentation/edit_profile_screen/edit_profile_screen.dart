import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_hotel_s/widgets/custom_text_form_field.dart';import 'package:almohsen_s_hotel_s/core/utils/validation_functions.dart';import 'package:almohsen_s_hotel_s/widgets/custom_drop_down.dart';import 'package:almohsen_s_hotel_s/widgets/custom_phone_number.dart';import 'package:country_pickers/country.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/edit_profile_controller.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {EditProfileScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 43.v), child: Column(children: [_buildLabel1(), SizedBox(height: 24.v), _buildLabel2(), SizedBox(height: 24.v), _buildDate(), SizedBox(height: 24.v), _buildEmail(), SizedBox(height: 24.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgFavoriteWhiteA70020x20, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_united_states".tr, items: controller.editProfileModelObj.value.dropdownItemList!.value), SizedBox(height: 24.v), _buildPhoneNumber(), SizedBox(height: 24.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgFavoriteWhiteA70020x20, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_male".tr, items: controller.editProfileModelObj.value.dropdownItemList1!.value), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildUpdate())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_edit_profile".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildLabel1() { return CustomTextFormField(controller: controller.label1Controller, hintText: "lbl_daniel_austin".tr); } 
/// Section Widget
Widget _buildLabel2() { return CustomTextFormField(controller: controller.label2Controller, hintText: "lbl_daniel".tr); } 
/// Section Widget
Widget _buildDate() { return CustomTextFormField(controller: controller.dateController, hintText: "lbl_12_27_1995".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIconlyCurvedCalendarPrimary, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildEmail() { return CustomTextFormField(controller: controller.emailController, hintText: "lbl_uder_domain_com".tr, textInputType: TextInputType.emailAddress, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgGroupPrimary, height: 15.adaptSize, width: 15.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}, contentPadding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v)); } 
/// Section Widget
Widget _buildPhoneNumber() { return Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country value) {controller.selectedCountry.value = value;})); } 
/// Section Widget
Widget _buildUpdate() { return CustomElevatedButton(text: "lbl_update".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }
