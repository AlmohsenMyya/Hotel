import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'widgets/choosepaymentmethod_item_widget.dart';import 'models/choosepaymentmethod_item_model.dart';import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/choose_payment_method_controller.dart';class ChoosePaymentMethodScreen extends GetWidget<ChoosePaymentMethodController> {const ChoosePaymentMethodScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildAddNewCard(), SizedBox(height: 24.v), _buildChoosePaymentMethod()])), bottomNavigationBar: _buildContinueButton())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 56.v, leadingWidth: 52.h, leading: Container(height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.only(left: 24.h, top: 10.v, bottom: 17.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center, onTap: () {onTapImgArrowDown();}), CustomImageView(imagePath: ImageConstant.imgArrowDown, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center)])), title: Container(height: 29.v, width: 96.h, margin: EdgeInsets.only(left: 16.h), child: Stack(alignment: Alignment.center, children: [AppbarTitle(text: "lbl_payment".tr), AppbarTitle(text: "lbl_payment".tr)])), actions: [Container(height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 17.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgTelevision, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgTelevision, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.center)]))]); } 
/// Section Widget
Widget _buildAddNewCard() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_payment_methods".tr, style: theme.textTheme.titleMedium), GestureDetector(onTap: () {onTapTxtAddNewCard();}, child: Padding(padding: EdgeInsets.only(bottom: 2.v), child: Text("lbl_add_new_card".tr, style: CustomTextStyles.titleMediumPrimary)))]); } 
/// Section Widget
Widget _buildChoosePaymentMethod() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 28.v);}, itemCount: controller.choosePaymentMethodModelObj.value.choosepaymentmethodItemList.value.length, itemBuilder: (context, index) {ChoosepaymentmethodItemModel model = controller.choosePaymentMethodModelObj.value.choosepaymentmethodItemList.value[index]; return ChoosepaymentmethodItemWidget(model);})); } 
/// Section Widget
Widget _buildContinueButton() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 49.v), onPressed: () {onTapContinueButton();}); } 

/// Navigates to the previous screen.
onTapImgArrowDown() { Get.back(); } 
/// Navigates to the addNewCardScreen when the action is triggered.
onTapTxtAddNewCard() { Get.toNamed(AppRoutes.addNewCardScreen, ); } 
/// Navigates to the confirmPaymentScreen when the action is triggered.
onTapContinueButton() { Get.toNamed(AppRoutes.confirmPaymentScreen, ); } 
 }
