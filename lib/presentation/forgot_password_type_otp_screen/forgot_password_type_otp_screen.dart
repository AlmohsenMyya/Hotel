import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_hotel_s/widgets/custom_pin_code_text_field.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/forgot_password_type_otp_controller.dart';class ForgotPasswordTypeOtpScreen extends GetWidget<ForgotPasswordTypeOtpController> {const ForgotPasswordTypeOtpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 34.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 18.v), Text("msg_code_has_been_send".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 59.v), Obx(() => CustomPinCodeTextField(context: Get.context!, controller: controller.otpController.value, onChanged: (value) {})), SizedBox(height: 62.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: CustomTextStyles.bodyLargeffffffff), TextSpan(text: "lbl_55".tr, style: CustomTextStyles.bodyLargeff1aadb6), TextSpan(text: "lbl_s".tr, style: CustomTextStyles.bodyLargeffffffff)]), textAlign: TextAlign.left)])), bottomNavigationBar: _buildVerify())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: EdgeInsets.only(left: 16.h))); } 
/// Section Widget
Widget _buildVerify() { return CustomElevatedButton(text: "lbl_verify".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapVerify();}); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
/// Navigates to the createNewPasswordScreen when the action is triggered.
onTapVerify() { Get.toNamed(AppRoutes.createNewPasswordScreen, ); } 
 }
