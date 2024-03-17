import '../../../core/app_export.dart';import '../models/sign_up_blank_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpBlankScreen.
///
/// This class manages the state of the SignUpBlankScreen, including the
/// current signUpBlankModelObj
class SignUpBlankController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpBlankModel> signUpBlankModelObj = SignUpBlankModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> rememberme = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
@override void onReady() { Get.toNamed(AppRoutes.fillProfileScreen, ); } 
 }
