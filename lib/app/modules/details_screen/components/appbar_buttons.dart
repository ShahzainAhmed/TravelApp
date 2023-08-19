import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/constants/app_colors.dart';

class MyAppBarButtons extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;
  const MyAppBarButtons({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.kGreyColor.withOpacity(0.5),
      ),
      child: Center(
        child: IconButton(
          iconSize: 20.sp,
          onPressed: onTap,
          icon: icon,
        ),
      ),
    );
  }
}
