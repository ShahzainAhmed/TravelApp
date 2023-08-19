import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';
import 'package:travel_app_ui/app/models/large_tile_model.dart';

class MyButtonRow extends StatelessWidget {
  final LargeTileModel myLargeTileModel;
  const MyButtonRow({super.key, required this.myLargeTileModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Start from",
                style: AppTypography.kLight14
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              SizedBox(height: 5.h),
              Text(
                "\$ ${myLargeTileModel.price} / person",
                style: AppTypography.kBold16
                    .copyWith(color: AppColors.kWhiteColor),
              )
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              backgroundColor: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
            onPressed: () => Get.back(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Now",
                  style: AppTypography.kBold18
                      .copyWith(color: AppColors.kBlackColor),
                ),
                SizedBox(width: 10.w),
                const Icon(
                  Icons.double_arrow,
                  color: AppColors.kBlackColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
