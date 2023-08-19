import 'dart:ui';

import 'package:travel_app_ui/app/data/constants/app_colors.dart';

class ColoredTilesModel {
  String title;
  Color color;
  Color textColor;

  ColoredTilesModel({
    required this.title,
    required this.color,
    required this.textColor,
  });
}

List myColoredTileList = [
  ColoredTilesModel(
    title: 'Beach',
    color: AppColors.kLightOrange,
    textColor: AppColors.kOrangeText,
  ),
  ColoredTilesModel(
    title: "Mountain",
    color: AppColors.kLightBlue,
    textColor: AppColors.kBlueText,
  ),
  ColoredTilesModel(
    title: "Lake",
    color: AppColors.kLightYellow,
    textColor: AppColors.kYellowText,
  ),
  ColoredTilesModel(
    title: "River",
    color: AppColors.kLightGreen,
    textColor: AppColors.kGreenText,
  ),
];
