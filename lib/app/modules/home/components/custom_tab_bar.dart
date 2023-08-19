import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';

class MyCustomTabBar extends StatelessWidget {
  const MyCustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.only(right: 20.w),
      isScrollable: true,
      physics: const BouncingScrollPhysics(),
      indicatorColor: AppColors.kBlackColor,
      labelColor: AppColors.kBlackColor,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: AppColors.kGreyColor,
      indicatorPadding: EdgeInsets.only(right: 30.w),
      unselectedLabelStyle: AppTypography.kBold16,
      indicatorWeight: 2.w,
      labelStyle: AppTypography.kBold16,
      tabs: const [
        Tab(text: "Recommended"),
        Tab(text: "Popular"),
        Tab(text: "New Destination"),
        Tab(text: "Hidden"),
      ],
    );
  }
}
