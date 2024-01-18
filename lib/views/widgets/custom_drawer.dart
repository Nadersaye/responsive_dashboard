import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/models/user_info.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_list.dart';
import 'package:responsive_dashboard/views/widgets/in_active_drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width <= 800
          ? MediaQuery.sizeOf(context).width * .7
          : null,
      color: AppColors.whiteColor,
      padding: const EdgeInsets.fromLTRB(28, 0, 20, 48),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              color: AppColors.mediumGreyColor,
              child: UserInfoListTile(
                  userInfo: UserInfoModel(
                      image: Assets.imagesAvatar3,
                      title: "Lekan Okeowo",
                      subTitle: "demo@gmail.com")),
            ),
          ),
          const SliverGap(8),
          const DrawerListItem(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                IntActiveDrawerItem(
                    drawerItem: DrawerItemModel(
                        image: Assets.imagesSetting, title: 'Setting system')),
                IntActiveDrawerItem(
                    drawerItem: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout account')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
