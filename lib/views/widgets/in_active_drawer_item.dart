import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/drawer_item.dart';
import '../../utils/app_styles.dart';

class IntActiveDrawerItem extends StatelessWidget {
  const IntActiveDrawerItem({super.key, required this.drawerItem});
  final DrawerItemModel drawerItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(drawerItem.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItem.title,
            style: AppStyles.styleRegular16(context),
          ),
        ));
  }
}
