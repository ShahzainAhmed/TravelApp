import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';
import 'package:travel_app_ui/app/models/colored_tiles_model.dart';

class MyColoredTiles extends StatelessWidget {
  final ColoredTilesModel myColoredTilesModel;
  const MyColoredTiles({super.key, required this.myColoredTilesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.kGreyColor.withOpacity(0.5),
            blurRadius: 4.r,
            offset: const Offset(5, 5),
          ),
        ],
        color: myColoredTilesModel.color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        myColoredTilesModel.title,
        style: AppTypography.kBold14
            .copyWith(color: myColoredTilesModel.textColor),
      ),
    );
  }
}
