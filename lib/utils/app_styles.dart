import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle styleRegular12 = TextStyle(
    color: AppColors.greyColor,
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleRegular14 = TextStyle(
    color: AppColors.greyColor,
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleRegular16 = TextStyle(
    color: AppColors.darkBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleMedium16 = TextStyle(
    color: AppColors.darkBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    color: AppColors.darkBlueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleBold16 = TextStyle(
    color: AppColors.blueColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    color: AppColors.blueColor,
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    color: AppColors.darkBlueColor,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    color: AppColors.blueColor,
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
}
