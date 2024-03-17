import 'package:almohsen_s_hotel_s/widgets/custom_search_view.dart';
import 'package:almohsen_s_hotel_s/presentation/filter_result_page/filter_result_page.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_hotel_s/core/app_export.dart';
import 'controller/search_page_tab_container_controller.dart';
import 'models/search_page_tab_container_model.dart';

class SearchPageTabContainerPage extends StatelessWidget {
  SearchPageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  SearchPageTabContainerController controller = Get.put(
      SearchPageTabContainerController(SearchPageTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 650.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      FilterResultPage(),
                      FilterResultPage(),
                      FilterResultPage(),
                      FilterResultPage(),
                      FilterResultPage(),
                    ],
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
  Widget _buildTabview() {
    return Container(
      height: 38.v,
      width: 404.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_all_hotel".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_recommended".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_popular".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_trending".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_nearby".tr,
            ),
          ),
        ],
      ),
    );
  }
}
