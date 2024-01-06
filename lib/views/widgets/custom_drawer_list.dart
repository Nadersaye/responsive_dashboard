import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

import '../../utils/app_images.dart';

class DrawerListItem extends StatefulWidget {
  const DrawerListItem({super.key});
  @override
  State<DrawerListItem> createState() => _DrawerListItemState();
}

class _DrawerListItemState extends State<DrawerListItem> {
  List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransation, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments')
  ];
  int? activeIndex;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != index) {
                  activeIndex = index;
                }
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: DrawerItem(
                drawerItem: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
