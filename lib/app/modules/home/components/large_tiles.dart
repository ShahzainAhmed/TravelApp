import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';
import 'package:travel_app_ui/app/models/large_tile_model.dart';

class MyLargeTile extends StatelessWidget {
  final LargeTileModel myLargeTile;
  final VoidCallback onTap;
  const MyLargeTile(
      {super.key, required this.myLargeTile, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 190.h,
        width: 300.w,
        padding: EdgeInsets.only(left: 20.w, bottom: 15.h, right: 60.w),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.kBlackColor.withOpacity(0.4),
              blurRadius: 5.r,
              offset: const Offset(5, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.kGreyColor,
          image: DecorationImage(
            image: AssetImage(myLargeTile.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3,
                  sigmaY: 3,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.kLightGrey.withOpacity(0.2),
                  ),
                  child: ListTile(
                    minLeadingWidth: 0,
                    leading: const Icon(
                      Icons.pin_drop,
                      color: AppColors.kWhiteColor,
                    ),
                    title: Text(
                      myLargeTile.title,
                      style: AppTypography.kBold14.copyWith(
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
