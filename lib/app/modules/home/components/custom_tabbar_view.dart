import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';
import 'package:travel_app_ui/app/models/colored_tiles_model.dart';
import 'package:travel_app_ui/app/models/large_tile_model.dart';
import 'package:travel_app_ui/app/modules/details_screen/details_screen.dart';
import 'package:travel_app_ui/app/modules/home/components/colored_tiles.dart';
import 'package:travel_app_ui/app/modules/home/components/large_tiles.dart';

class MyTabBarView extends StatelessWidget {
  const MyTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    final reversedList = myLargeTileList.reversed.toList();

    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SizedBox(
          height: 210.h,
          child: ListView.separated(
            padding: EdgeInsets.only(right: 20.w),
            separatorBuilder: (context, index) => SizedBox(width: 15.w),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: myLargeTileList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(height: 10.h),
                  MyLargeTile(
                    myLargeTile: myLargeTileList[index],
                    onTap: () => Get.to(DetailsScreen(
                      myLargeTileModel: myLargeTileList[index],
                    )),
                  ),
                  SizedBox(height: 10.h),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Popular Categories",
          style: AppTypography.kExtraBold20,
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 75.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 10.w),
            padding: EdgeInsets.only(right: 20.w),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: myColoredTileList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(height: 10.h),
                  MyColoredTiles(
                    myColoredTilesModel: myColoredTileList[index],
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: Get.height * 0.5,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(right: 20.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 20.h,
              childAspectRatio: 1.5,
            ),
            itemCount: reversedList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => Get.to(
                  DetailsScreen(myLargeTileModel: reversedList[index]),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.kBlackColor.withOpacity(0.3),
                        blurRadius: 5.r,
                        offset: const Offset(5, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(
                        reversedList[index].image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 80.h),
      ],
    );
  }
}
