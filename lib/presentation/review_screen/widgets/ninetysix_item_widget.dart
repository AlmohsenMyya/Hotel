import '../models/ninetysix_item_model.dart';
import '../controller/review_controller.dart';
import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';

// ignore: must_be_immutable
class NinetysixItemWidget extends StatelessWidget {
  NinetysixItemWidget(
    this.ninetysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetysixItemModel ninetysixItemModelObj;

  var controller = Get.find<ReviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: ninetysixItemModelObj.jennyWilson!.value,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 7.v,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        ninetysixItemModelObj.jennyWilson1!.value,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        ninetysixItemModelObj.dec!.value,
                        style: CustomTextStyles.labelLargeGray40001,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              _buildFive(),
            ],
          ),
          SizedBox(height: 11.v),
          Container(
            width: 284.h,
            margin: EdgeInsets.only(right: 47.h),
            child: Obx(
              () => Text(
                ninetysixItemModelObj.veryniceandcomfortab!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFive() {
    return CustomElevatedButton(
      height: 32.v,
      width: 60.h,
      text: "lbl_5".tr,
      margin: EdgeInsets.symmetric(vertical: 8.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 12.adaptSize,
          width: 12.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
