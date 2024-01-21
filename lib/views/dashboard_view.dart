import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: MediaQuery.sizeOf(context).width <= 800
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.mediumGreyColor,
              leading: IconButton(
                  onPressed: () {
                    globalKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: AppColors.darkBlueColor,
                  )),
            )
          : null,
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.mainBackgroundColor,
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
