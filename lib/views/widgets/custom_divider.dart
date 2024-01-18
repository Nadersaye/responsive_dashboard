import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.lightGreyColor,
      thickness: 2,
      height: height ?? 48,
    );
  }
}
