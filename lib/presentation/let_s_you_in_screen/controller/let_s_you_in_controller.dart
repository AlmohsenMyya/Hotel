import '../../../core/app_export.dart';import '../models/let_s_you_in_model.dart';/// A controller class for the LetSYouInScreen.
///
/// This class manages the state of the LetSYouInScreen, including the
/// current letSYouInModelObj
class LetSYouInController extends GetxController {Rx<LetSYouInModel> letSYouInModelObj = LetSYouInModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.signInScreen, );Get.toNamed(AppRoutes.signUpBlankScreen, ); } 
 }
