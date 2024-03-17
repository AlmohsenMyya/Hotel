import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_hotel_s/widgets/custom_text_form_field.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/add_new_card_controller.dart';class AddNewCardScreen extends GetWidget<AddNewCardController> {const AddNewCardScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgCard1, height: 240.v, width: 380.h), SizedBox(height: 28.v), _buildNameEditText(), SizedBox(height: 28.v), _buildNumberEditText(), SizedBox(height: 28.v), _buildExpiryAndCvvNumberRow(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAddNewCardButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 52.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 13.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_add_new_card".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildNameEditText() { return CustomTextFormField(controller: controller.nameEditTextController, hintText: "lbl_daniel_austin".tr); } 
/// Section Widget
Widget _buildNumberEditText() { return CustomTextFormField(controller: controller.numberEditTextController, hintText: "msg_6373_2728_4797_4679".tr); } 
/// Section Widget
Widget _buildExpiryDateEditText() { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: CustomTextFormField(controller: controller.expiryDateEditTextController, hintText: "lbl_02_30".tr))); } 
/// Section Widget
Widget _buildCvvEditText() { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: CustomTextFormField(controller: controller.cvvEditTextController, hintText: "lbl_190".tr, textInputAction: TextInputAction.done))); } 
/// Section Widget
Widget _buildExpiryAndCvvNumberRow() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildExpiryDateEditText(), _buildCvvEditText()]); } 
/// Section Widget
Widget _buildAddNewCardButton() { return CustomElevatedButton(text: "lbl_add_new_card".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v)); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }
