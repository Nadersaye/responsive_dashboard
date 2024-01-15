import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

class CustomerDivider extends StatelessWidget {
  const CustomerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.lightGreyColor,
      thickness: 2,
      height: 48,
    );
  }
}
