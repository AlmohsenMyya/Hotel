import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_image.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_trailing_image.dart';import 'widgets/mybookmarks_item_widget.dart';import 'models/mybookmarks_item_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_s_hotel_s/core/app_export.dart';import 'controller/my_bookmarks_controller.dart';class MyBookmarksScreen extends GetWidget<MyBookmarksController> {const MyBookmarksScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 281.v, crossAxisCount: 2, mainAxisSpacing: 24.h, crossAxisSpacing: 24.h), physics: BouncingScrollPhysics(), itemCount: controller.myBookmarksModelObj.value.mybookmarksItemList.value.length, itemBuilder: (context, index) {MybookmarksItemModel model = controller.myBookmarksModelObj.value.mybookmarksItemList.value[index]; return MybookmarksItemWidget(model, onTapImgImage: () {onTapImgImage();});}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_my_bookmarks".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgMegaphone, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 16.h)), AppbarTrailingImage(imagePath: ImageConstant.imgGridPrimary, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 40.h))]); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 

onTapImgImage() { // TODO: implement Actions
 } 
 }
