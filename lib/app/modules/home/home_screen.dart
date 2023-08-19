import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';
import 'package:travel_app_ui/app/modules/home/components/custom_tab_bar.dart';
import 'package:travel_app_ui/app/modules/home/components/custom_tabbar_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 0,
          leading: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Icon(Icons.menu, size: 23.sp, color: AppColors.kGreyColor),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child:
                  Icon(Icons.search, size: 23.sp, color: AppColors.kGreyColor),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                "Explore\nthe Nature",
                style: AppTypography.kExtraBold34,
              ),
              SizedBox(height: 10.h),
              const MyCustomTabBar(),
              SizedBox(height: 20.h),
              const Expanded(
                child: TabBarView(
                  children: [
                    MyTabBarView(),
                    MyTabBarView(),
                    MyTabBarView(),
                    MyTabBarView(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
