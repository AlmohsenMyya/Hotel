import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/let_s_you_in_controller.dart';import 'package:almohsen_s_hotel_s/domain/facebookauth/facebook_auth_helper.dart';import 'package:almohsen_s_hotel_s/domain/googleauth/google_auth_helper.dart';class LetSYouInScreen extends GetWidget<LetSYouInController> {const LetSYouInScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 47.v), child: Column(children: [SizedBox(height: 76.v), Text("lbl_let_s_you_in".tr, style: theme.textTheme.displayMedium), SizedBox(height: 90.v), _buildSocial(), SizedBox(height: 58.v), CustomImageView(imagePath: ImageConstant.imgGroup16, height: 9.v, width: 360.h), SizedBox(height: 57.v), CustomElevatedButton(text: "msg_sign_in_with_password".tr, onPressed: () {onTapSignInWithPassword();}), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: CustomTextStyles.bodyMediumGray50)), GestureDetector(onTap: () {onTapTxtSignUp();}, child: Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_sign_up".tr, style: CustomTextStyles.titleSmallPrimary)))])])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 50.v, leadingWidth: 427.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.fromLTRB(28.h, 17.v, 380.h, 17.v))); } 
/// Section Widget
Widget _buildSocial() { return Column(children: [CustomElevatedButton(height: 60.v, text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgLogosfacebook, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapContinueWithFacebook();}), SizedBox(height: 16.v), CustomElevatedButton(height: 60.v, text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 11.h), child: CustomImageView(imagePath: ImageConstant.imgFrame, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold, onPressed: () {onTapContinueWithGoogle();}), SizedBox(height: 16.v), CustomElevatedButton(height: 60.v, text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFrameWhiteA700, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.fillBlueGrayTL16, buttonTextStyle: CustomTextStyles.titleMediumSemiBold)]); } 
onTapContinueWithFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
onTapContinueWithGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
/// Navigates to the signInScreen when the action is triggered.
onTapSignInWithPassword() { Get.toNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the signUpBlankScreen when the action is triggered.
onTapTxtSignUp() { Get.toNamed(AppRoutes.signUpBlankScreen, ); } 
 }
