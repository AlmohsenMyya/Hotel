import 'package:get/get.dart';
import '../presentation/welcome_screen/welcome_screen.dart';
import '../presentation/welcome_screen/binding/welcome_binding.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import '../presentation/onboarding_three_screen/onboarding_three_screen.dart';
import '../presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import '../presentation/let_s_you_in_screen/let_s_you_in_screen.dart';
import '../presentation/let_s_you_in_screen/binding/let_s_you_in_binding.dart';
import '../presentation/sign_up_blank_screen/sign_up_blank_screen.dart';
import '../presentation/sign_up_blank_screen/binding/sign_up_blank_binding.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_in_screen/binding/sign_in_binding.dart';
import '../presentation/fill_profile_screen/fill_profile_screen.dart';
import '../presentation/fill_profile_screen/binding/fill_profile_binding.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import '../presentation/forgot_password_type_otp_screen/binding/forgot_password_type_otp_binding.dart';
import '../presentation/forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import '../presentation/forgot_password_filled_type_screen/binding/forgot_password_filled_type_binding.dart';
import '../presentation/create_new_password_screen/create_new_password_screen.dart';
import '../presentation/create_new_password_screen/binding/create_new_password_binding.dart';
import '../presentation/home_screen_container_screen/home_screen_container_screen.dart';
import '../presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import '../presentation/recently_booked_screen/recently_booked_screen.dart';
import '../presentation/recently_booked_screen/binding/recently_booked_binding.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/notifications_screen/binding/notifications_binding.dart';
import '../presentation/my_bookmarks_screen/my_bookmarks_screen.dart';
import '../presentation/my_bookmarks_screen/binding/my_bookmarks_binding.dart';
import '../presentation/search_type_screen/search_type_screen.dart';
import '../presentation/search_type_screen/binding/search_type_binding.dart';
import '../presentation/hotel_details_screen/hotel_details_screen.dart';
import '../presentation/hotel_details_screen/binding/hotel_details_binding.dart';
import '../presentation/gallery_screen/gallery_screen.dart';
import '../presentation/gallery_screen/binding/gallery_binding.dart';
import '../presentation/location_screen/location_screen.dart';
import '../presentation/location_screen/binding/location_binding.dart';
import '../presentation/select_date_guest_screen/select_date_guest_screen.dart';
import '../presentation/select_date_guest_screen/binding/select_date_guest_binding.dart';
import '../presentation/booking_name_screen/booking_name_screen.dart';
import '../presentation/booking_name_screen/binding/booking_name_binding.dart';
import '../presentation/choose_payment_method_screen/choose_payment_method_screen.dart';
import '../presentation/choose_payment_method_screen/binding/choose_payment_method_binding.dart';
import '../presentation/add_new_card_screen/add_new_card_screen.dart';
import '../presentation/add_new_card_screen/binding/add_new_card_binding.dart';
import '../presentation/card_added_screen/card_added_screen.dart';
import '../presentation/card_added_screen/binding/card_added_binding.dart';
import '../presentation/confirm_payment_screen/confirm_payment_screen.dart';
import '../presentation/confirm_payment_screen/binding/confirm_payment_binding.dart';
import '../presentation/view_ticket_screen/view_ticket_screen.dart';
import '../presentation/view_ticket_screen/binding/view_ticket_binding.dart';
import '../presentation/booking_ongoing_screen/booking_ongoing_screen.dart';
import '../presentation/booking_ongoing_screen/binding/booking_ongoing_binding.dart';
import '../presentation/booking_cancelled_screen/booking_cancelled_screen.dart';
import '../presentation/booking_cancelled_screen/binding/booking_cancelled_binding.dart';
import '../presentation/refund_method_screen/refund_method_screen.dart';
import '../presentation/refund_method_screen/binding/refund_method_binding.dart';
import '../presentation/edit_profile_screen/edit_profile_screen.dart';
import '../presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import '../presentation/notification_settings_screen/notification_settings_screen.dart';
import '../presentation/notification_settings_screen/binding/notification_settings_binding.dart';
import '../presentation/security_screen/security_screen.dart';
import '../presentation/security_screen/binding/security_binding.dart';
import '../presentation/review_screen/review_screen.dart';
import '../presentation/review_screen/binding/review_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String bookingCompletedPage = '/booking_completed_page';

  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';

  static const String signUpBlankScreen = '/sign_up_blank_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledTypeScreen =
      '/forgot_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenTabContainerPage =
      '/home_screen_tab_container_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyBookedScreen = '/recently_booked_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myBookmarksScreen = '/my_bookmarks_screen';

  static const String searchPage = '/search_page';

  static const String searchPageTabContainerPage =
      '/search_page_tab_container_page';

  static const String searchTypeScreen = '/search_type_screen';

  static const String filterResultPage = '/filter_result_page';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNameScreen = '/booking_name_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String cardAddedScreen = '/card_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingScreen = '/booking_ongoing_screen';

  static const String bookingCancelledScreen = '/booking_cancelled_screen';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String reviewScreen = '/review_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: letSYouInScreen,
      page: () => LetSYouInScreen(),
      bindings: [
        LetSYouInBinding(),
      ],
    ),
    GetPage(
      name: signUpBlankScreen,
      page: () => SignUpBlankScreen(),
      bindings: [
        SignUpBlankBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: fillProfileScreen,
      page: () => FillProfileScreen(),
      bindings: [
        FillProfileBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordTypeOtpScreen,
      page: () => ForgotPasswordTypeOtpScreen(),
      bindings: [
        ForgotPasswordTypeOtpBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordFilledTypeScreen,
      page: () => ForgotPasswordFilledTypeScreen(),
      bindings: [
        ForgotPasswordFilledTypeBinding(),
      ],
    ),
    GetPage(
      name: createNewPasswordScreen,
      page: () => CreateNewPasswordScreen(),
      bindings: [
        CreateNewPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      name: recentlyBookedScreen,
      page: () => RecentlyBookedScreen(),
      bindings: [
        RecentlyBookedBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: myBookmarksScreen,
      page: () => MyBookmarksScreen(),
      bindings: [
        MyBookmarksBinding(),
      ],
    ),
    GetPage(
      name: searchTypeScreen,
      page: () => SearchTypeScreen(),
      bindings: [
        SearchTypeBinding(),
      ],
    ),
    GetPage(
      name: hotelDetailsScreen,
      page: () => HotelDetailsScreen(),
      bindings: [
        HotelDetailsBinding(),
      ],
    ),
    GetPage(
      name: galleryScreen,
      page: () => GalleryScreen(),
      bindings: [
        GalleryBinding(),
      ],
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
      bindings: [
        LocationBinding(),
      ],
    ),
    GetPage(
      name: selectDateGuestScreen,
      page: () => SelectDateGuestScreen(),
      bindings: [
        SelectDateGuestBinding(),
      ],
    ),
    GetPage(
      name: bookingNameScreen,
      page: () => BookingNameScreen(),
      bindings: [
        BookingNameBinding(),
      ],
    ),
    GetPage(
      name: choosePaymentMethodScreen,
      page: () => ChoosePaymentMethodScreen(),
      bindings: [
        ChoosePaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: addNewCardScreen,
      page: () => AddNewCardScreen(),
      bindings: [
        AddNewCardBinding(),
      ],
    ),
    GetPage(
      name: cardAddedScreen,
      page: () => CardAddedScreen(),
      bindings: [
        CardAddedBinding(),
      ],
    ),
    GetPage(
      name: confirmPaymentScreen,
      page: () => ConfirmPaymentScreen(),
      bindings: [
        ConfirmPaymentBinding(),
      ],
    ),
    GetPage(
      name: viewTicketScreen,
      page: () => ViewTicketScreen(),
      bindings: [
        ViewTicketBinding(),
      ],
    ),
    GetPage(
      name: bookingOngoingScreen,
      page: () => BookingOngoingScreen(),
      bindings: [
        BookingOngoingBinding(),
      ],
    ),
    GetPage(
      name: bookingCancelledScreen,
      page: () => BookingCancelledScreen(),
      bindings: [
        BookingCancelledBinding(),
      ],
    ),
    GetPage(
      name: refundMethodScreen,
      page: () => RefundMethodScreen(),
      bindings: [
        RefundMethodBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: notificationSettingsScreen,
      page: () => NotificationSettingsScreen(),
      bindings: [
        NotificationSettingsBinding(),
      ],
    ),
    GetPage(
      name: securityScreen,
      page: () => SecurityScreen(),
      bindings: [
        SecurityBinding(),
      ],
    ),
    GetPage(
      name: reviewScreen,
      page: () => ReviewScreen(),
      bindings: [
        ReviewBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
