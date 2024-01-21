import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

import 'size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        color: AppColors.greyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: AppColors.greyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleBold16(BuildContext context) => TextStyle(
        color: AppColors.blueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
      );
  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        color: AppColors.blueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        color: AppColors.darkBlueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        color: AppColors.blueColor,
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w600,
      );
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  //use this way if you build app for android/tablet not web
  /*var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;*/

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
