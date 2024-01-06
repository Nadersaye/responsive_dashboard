import 'package:flutter/material.dart';
import '../../models/drawer_item.dart';
import 'active_drawer_item.dart';
import 'in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItem, required this.isActive});
  final DrawerItemModel drawerItem;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveDrawerItem(drawerItem: drawerItem),
      secondChild: IntActiveDrawerItem(drawerItem: drawerItem),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 700),
      firstCurve: Curves.bounceInOut,
    );
  }
}
