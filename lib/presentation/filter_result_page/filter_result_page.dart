import 'package:almohsen_s_hotel_s/widgets/custom_icon_button.dart';
import 'widgets/filterresult_item_widget.dart';
import 'models/filterresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';
import 'controller/filter_result_controller.dart';
import 'models/filter_result_model.dart';

class FilterResultPage extends StatelessWidget {
  FilterResultPage({Key? key})
      : super(
          key: key,
        );

  FilterResultController controller =
      Get.put(FilterResultController(FilterResultModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                _buildRecommendedSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "msg_recommended_586_379".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 28.adaptSize,
                width: 28.adaptSize,
                padding: EdgeInsets.all(2.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserPrimary28x28,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGrid,
                height: 28.adaptSize,
                width: 28.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount: controller
                  .filterResultModelObj.value.filterresultItemList.value.length,
              itemBuilder: (context, index) {
                FilterresultItemModel model = controller.filterResultModelObj
                    .value.filterresultItemList.value[index];
                return FilterresultItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
