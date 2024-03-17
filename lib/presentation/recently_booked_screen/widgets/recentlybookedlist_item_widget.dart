import '../models/recentlybookedlist_item_model.dart';
import '../controller/recently_booked_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';

// ignore: must_be_immutable
class RecentlybookedlistItemWidget extends StatelessWidget {
  RecentlybookedlistItemWidget(
    this.recentlybookedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentlybookedlistItemModel recentlybookedlistItemModelObj;

  var controller = Get.find<RecentlyBookedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: recentlybookedlistItemModelObj.martinezCannes!.value,
              height: 100.adaptSize,
              width: 100.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    recentlybookedlistItemModelObj.presidentHotel!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 18.v),
                Obx(
                  () => Text(
                    recentlybookedlistItemModelObj.parisFrance!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    SizedBox(
                      width: 35.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignalYellowA700,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                          ),
                          Obx(
                            () => Text(
                              recentlybookedlistItemModelObj.fortyEight!.value,
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Obx(
                        () => Text(
                          recentlybookedlistItemModelObj.reviews!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                  () => Text(
                    recentlybookedlistItemModelObj.price!.value,
                    style: CustomTextStyles.headlineSmallPrimary,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    recentlybookedlistItemModelObj.night!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
