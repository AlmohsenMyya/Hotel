import '../../../core/app_export.dart';import '../models/fill_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the FillProfileScreen.
///
/// This class manages the state of the FillProfileScreen, including the
/// current fillProfileModelObj
class FillProfileController extends GetxController {TextEditingController fullNameEditTextController = TextEditingController();

TextEditingController nameEditTextController = TextEditingController();

TextEditingController dateOfBirthEditTextController = TextEditingController();

TextEditingController emailEditTextController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<FillProfileModel> fillProfileModelObj = FillProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); fullNameEditTextController.dispose(); nameEditTextController.dispose(); dateOfBirthEditTextController.dispose(); emailEditTextController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in fillProfileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} fillProfileModelObj.value.dropdownItemList.refresh(); } 
 }
