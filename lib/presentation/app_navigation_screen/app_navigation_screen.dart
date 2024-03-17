import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Welcome Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Let\\'s You In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.letSYouInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up (Blank)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBlankScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Fill Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fillProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password - Type OTP".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordTypeOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password - Filled Type".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordFilledTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create New Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createNewPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Recently Booked".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recentlyBookedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Bookmarks".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myBookmarksScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search Type".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Hotel Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hotelDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gallery".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.galleryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select date & Guest".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectDateGuestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Booking Name".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookingNameScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose Payment Method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.choosePaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Card Added".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cardAddedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Confirm Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "View Ticket".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.viewTicketScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Booking Ongoing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookingOngoingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Booking Cancelled".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingCancelledScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Refund Method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.refundMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Review".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
