import '../models/tickets1_item_model.dart';
import '../controller/booking_ongoing_controller.dart';
import 'package:almohsen_s_hotel_s/widgets/custom_elevated_button.dart';
import 'package:almohsen_s_hotel_s/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';

// ignore: must_be_immutable
class Tickets1ItemWidget extends StatelessWidget {
  Tickets1ItemWidget(
    this.tickets1ItemModelObj, {
    Key? key,
    this.onTapCancelBookingButton,
    this.onTapViewTicketButton,
  }) : super(
          key: key,
        );

  Tickets1ItemModel tickets1ItemModelObj;

  var controller = Get.find<BookingOngoingController>();

  VoidCallback? onTapCancelBookingButton;

  VoidCallback? onTapViewTicketButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 100.v,
            width: 332.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Obx(
                      () => Text(
                        tickets1ItemModelObj.royalePresident!.value,
                        style: CustomTextStyles.titleLargeSemiBold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: tickets1ItemModelObj.image!.value,
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          radius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 41.v,
                          bottom: 6.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                tickets1ItemModelObj.parisFrance!.value,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            SizedBox(height: 11.v),
                            _buildPaidButton(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCancelBookingButton(),
              _buildViewTicketButton(),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaidButton() {
    return CustomElevatedButton(
      height: 24.v,
      width: 60.h,
      text: "lbl_paid".tr,
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.labelMediumCyan300,
    );
  }

  /// Section Widget
  Widget _buildCancelBookingButton() {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_cancel_booking".tr,
        margin: EdgeInsets.only(right: 6.h),
        onPressed: () {
          onTapCancelBookingButton!.call();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildViewTicketButton() {
    return Expanded(
      child: CustomElevatedButton(
        height: 38.v,
        text: "lbl_view_ticket".tr,
        margin: EdgeInsets.only(left: 6.h),
        buttonStyle: CustomButtonStyles.fillPrimaryTL19,
        buttonTextStyle: CustomTextStyles.titleMediumSemiBold,
        onPressed: () {
          onTapViewTicketButton!.call();
        },
      ),
    );
  }
}
