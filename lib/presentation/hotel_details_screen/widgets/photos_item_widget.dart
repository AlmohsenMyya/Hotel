import '../models/photos_item_model.dart';
import '../controller/hotel_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';

// ignore: must_be_immutable
class PhotosItemWidget extends StatelessWidget {
  PhotosItemWidget(
    this.photosItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PhotosItemModel photosItemModelObj;

  var controller = Get.find<HotelDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Obx(
          () => CustomImageView(
            imagePath: photosItemModelObj.rectangle!.value,
            height: 100.v,
            width: 140.h,
            radius: BorderRadius.circular(
              16.h,
            ),
          ),
        ),
      ),
    );
  }
}
