import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfo});
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(userInfo.image),
      title: Text(
        userInfo.title,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        userInfo.subTitle,
        style: AppStyles.styleRegular12,
      ),
    );
  }
}
