import 'package:almohsen_s_hotel_s/widgets/custom_icon_button.dart';
import 'package:almohsen_s_hotel_s/widgets/custom_search_view.dart';
import 'models/searchrecommendations_item_model.dart';
import '../search_type_screen/widgets/searchrecommendations_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';
import 'controller/search_type_controller.dart';

// ignore_for_file: must_be_immutable
class SearchTypeScreen extends GetWidget<SearchTypeController> {
  const SearchTypeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              CustomSearchView(
                controller: controller.searchController,
                hintText: "lbl_hotel".tr,
              ),
              SizedBox(height: 24.v),
              _buildSearchRecommendations(),
              SizedBox(height: 32.v),
              _buildRecentSearches(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRecommendations() {
    return Obx(
      () => Wrap(
        runSpacing: 12.v,
        spacing: 12.h,
        children: List<Widget>.generate(
          controller.searchTypeModelObj.value.searchrecommendationsItemList
              .value.length,
          (index) {
            SearchrecommendationsItemModel model = controller.searchTypeModelObj
                .value.searchrecommendationsItemList.value[index];

            return SearchrecommendationsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentSearches() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_recent".tr,
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 21.v),
        _buildSeventyThree(
          text: "msg_amsterdam_netherlands".tr,
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          text: "lbl_palazzo_hotel".tr,
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          text: "lbl_bulgari_hotel".tr,
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          text: "msg_martinez_cannes".tr,
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          text: "msg_london_united_kingdom".tr,
        ),
        SizedBox(height: 24.v),
        _buildSeventyThree(
          text: "msg_palms_casino_hotel".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSeventyThree({required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            text,
            style: CustomTextStyles.titleMediumGray40001.copyWith(
              color: appTheme.gray40001,
            ),
          ),
        ),
        CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconlyCurvedClose,
          ),
        ),
      ],
    );
  }
}
