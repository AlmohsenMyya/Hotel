import 'package:almohsen_s_hotel_s/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';
import 'package:almohsen_s_hotel_s/presentation/search_page_tab_container_page/search_page_tab_container_page.dart';
import 'package:almohsen_s_hotel_s/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:almohsen_s_hotel_s/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_s_hotel_s/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/tickets2_item_widget.dart';
import 'models/tickets2_item_model.dart';
import 'package:almohsen_s_hotel_s/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';
import 'controller/booking_cancelled_controller.dart';

// ignore_for_file: must_be_immutable
class BookingCancelledScreen extends GetWidget<BookingCancelledController> {
  const BookingCancelledScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              _buildMyBookings(),
              SizedBox(height: 30.v),
              _buildTickets(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFloatingIconWhiteA700,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_my_bookings".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMyBookings() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_ongoing".tr,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_completed".tr,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_cancelled".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTickets() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.v),
            child: SizedBox(
              width: 340.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray700,
              ),
            ),
          );
        },
        itemCount: controller
            .bookingCancelledModelObj.value.tickets2ItemList.value.length,
        itemBuilder: (context, index) {
          Tickets2ItemModel model = controller
              .bookingCancelledModelObj.value.tickets2ItemList.value[index];
          return Tickets2ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenTabContainerPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPageTabContainerPage;
      case BottomBarEnum.Booking:
        return "/";
      case BottomBarEnum.Profile:
        return AppRoutes.profileSettingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenTabContainerPage:
        return HomeScreenTabContainerPage();
      case AppRoutes.searchPageTabContainerPage:
        return SearchPageTabContainerPage();
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return DefaultWidget();
    }
  }
}
