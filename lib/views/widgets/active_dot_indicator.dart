import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

class ActiveDotIndicator extends StatelessWidget {
  const ActiveDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 32,
        height: 8,
        decoration: ShapeDecoration(
          color: AppColors.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ));
  }
}
