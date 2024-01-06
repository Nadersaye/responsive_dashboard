import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';

import 'widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
