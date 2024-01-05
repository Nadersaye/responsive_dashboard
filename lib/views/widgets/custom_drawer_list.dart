import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerListItem extends StatelessWidget {
  const DrawerListItem({super.key, required this.items});
  final List<DrawerItemModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: DrawerItem(drawerItem: items[index]),
          );
        });
  }
}
