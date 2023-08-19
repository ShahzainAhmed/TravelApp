import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:travel_app_ui/app/data/constants/app_colors.dart';
import 'package:travel_app_ui/app/data/constants/app_typography.dart';
import 'package:travel_app_ui/app/models/large_tile_model.dart';
import 'package:travel_app_ui/app/modules/details_screen/components/appbar_buttons.dart';
import 'package:travel_app_ui/app/modules/details_screen/components/button_row.dart';
import 'dart:ui';

class DetailsScreen extends StatefulWidget {
  final LargeTileModel myLargeTileModel;

  const DetailsScreen({
    super.key,
    required this.myLargeTileModel,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyAppBarButtons(
              icon: const Icon(Icons.arrow_back_ios_new),
              onTap: () => Get.back(),
            ),
            MyAppBarButtons(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_outline_outlined,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.myLargeTileModel.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 100.h),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.kWhiteColor.withOpacity(0.3),
                  ),
                  height: Get.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.myLargeTileModel.title,
                        style: AppTypography.kMedium32
                            .copyWith(color: AppColors.kWhiteColor),
                      ),
                      Text(
                        "${widget.myLargeTileModel.title} is one of the favorite tourist destination, you can feel cultural tourism and history to explore exotic beaches in Raja Ampat.",
                        style: AppTypography.kMedium12
                            .copyWith(color: AppColors.kWhiteColor),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: MyButtonRow(
          myLargeTileModel: widget.myLargeTileModel,
        ),
      ),
    );
  }
}
