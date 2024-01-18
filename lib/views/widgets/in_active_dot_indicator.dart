import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

class InActiveDotIndicator extends StatelessWidget {
  const InActiveDotIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: ShapeDecoration(
        color: AppColors.dotGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
