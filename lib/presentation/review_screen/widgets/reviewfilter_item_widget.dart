import '../models/reviewfilter_item_model.dart';
import '../controller/review_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';

// ignore: must_be_immutable
class ReviewfilterItemWidget extends StatelessWidget {
  ReviewfilterItemWidget(
    this.reviewfilterItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewfilterItemModel reviewfilterItemModelObj;

  var controller = Get.find<ReviewController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: reviewfilterItemModelObj.all!.value,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Obx(
                  () => Text(
                    reviewfilterItemModelObj.all1!.value,
                    style: CustomTextStyles.titleMedium16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
