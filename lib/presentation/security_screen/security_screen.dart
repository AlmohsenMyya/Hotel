import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_hotel_s/widgets/custom_switch.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/security_controller.dart';class SecurityScreen extends GetWidget<SecurityController> {const SecurityScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildAutoLayoutHorizontal1(), SizedBox(height: 31.v), _buildAutoLayoutHorizontal2(), SizedBox(height: 31.v), _buildAutoLayoutHorizontal3(), SizedBox(height: 33.v), _buildGoogleAuthenticator(), SizedBox(height: 49.v), CustomElevatedButton(text: "lbl_change_password".tr, buttonStyle: CustomButtonStyles.fillBlueGray), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_security".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal1() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_face_id".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal2() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_remember_me".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch1.value, onChange: (value) {controller.isSelectedSwitch1.value = value;}))]); } 
/// Section Widget
Widget _buildAutoLayoutHorizontal3() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_touch_id".tr, style: CustomTextStyles.titleMediumSemiBold_1)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch2.value, onChange: (value) {controller.isSelectedSwitch2.value = value;}))]); } 
/// Section Widget
Widget _buildGoogleAuthenticator() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("msg_google_authenticator".tr, style: CustomTextStyles.titleMediumSemiBold_1)), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }
