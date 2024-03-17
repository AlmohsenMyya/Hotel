import '../../../core/app_export.dart';import '../models/sign_in_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignInModel> signInModelObj = SignInModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> rememberme = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.signUpBlankScreen, );Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
 }
