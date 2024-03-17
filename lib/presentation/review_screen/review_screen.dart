import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'widgets/reviewfilter_item_widget.dart';import 'models/reviewfilter_item_model.dart';import 'widgets/ninetysix_item_widget.dart';import 'models/ninetysix_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/review_controller.dart';class ReviewScreen extends GetWidget<ReviewController> {const ReviewScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), _buildReviewFilter(), SizedBox(height: 37.v), _buildRatingHeader(), SizedBox(height: 18.v), _buildNinetySix()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_review".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsWhiteA700, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 14.v))]); } 
/// Section Widget
Widget _buildReviewFilter() { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 38.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 8.h);}, itemCount: controller.reviewModelObj.value.reviewfilterItemList.value.length, itemBuilder: (context, index) {ReviewfilterItemModel model = controller.reviewModelObj.value.reviewfilterItemList.value[index]; return ReviewfilterItemWidget(model);})))); } 
/// Section Widget
Widget _buildRatingHeader() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_rating".tr, style: CustomTextStyles.titleMediumSemiBold), Spacer(), CustomImageView(imagePath: ImageConstant.imgSignalYellowA700, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 4.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_4_8".tr, style: CustomTextStyles.titleMediumPrimarySemiBold))])), Padding(padding: EdgeInsets.only(left: 12.h, bottom: 3.v), child: Text("lbl_4_981_reviews".tr, style: CustomTextStyles.bodyMediumWhiteA700))])); } 
/// Section Widget
Widget _buildNinetySix() { return Expanded(child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: controller.reviewModelObj.value.ninetysixItemList.value.length, itemBuilder: (context, index) {NinetysixItemModel model = controller.reviewModelObj.value.ninetysixItemList.value[index]; return NinetysixItemWidget(model);})))); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }