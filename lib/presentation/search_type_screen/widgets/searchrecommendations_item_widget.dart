import '../models/searchrecommendations_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';

// ignore: must_be_immutable
class SearchrecommendationsItemWidget extends StatelessWidget {
  SearchrecommendationsItemWidget(
    this.searchrecommendationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchrecommendationsItemModel searchrecommendationsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 9.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            searchrecommendationsItemModelObj.allHotel!.value,
            style: TextStyle(
              color:
                  (searchrecommendationsItemModelObj.isSelected?.value ?? false)
                      ? appTheme.whiteA700
                      : theme.colorScheme.primary,
              fontSize: 16.fSize,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w600,
            ),
          ),
          selected:
              (searchrecommendationsItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (searchrecommendationsItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    19.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 2.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    19.h,
                  ),
                ),
          onSelected: (value) {
            searchrecommendationsItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
