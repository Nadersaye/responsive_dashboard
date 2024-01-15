import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import '../../models/user_info.dart';
import '../../utils/app_colors.dart';
import 'user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: "JoshNunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'kbram Tmufn',
        subTitle: 'kbramiadi29@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    //use in small list like as 3 ,4
    //in this case we don't need fixed hight

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items.map((item) {
        return IntrinsicWidth(
          child: Card(
            elevation: 0,
            color: AppColors.mediumGreyColor,
            child: UserInfoListTile(userInfo: item),
          ),
        );
      }).toList()),
    );

    //use in big list like because it is lazy builder which loading only items viewed for the user
    //but in this case we need fixed hight

    /*SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: Card(
                elevation: 0,
                color: AppColors.mediumGreyColor,
                child: UserInfoListTile(userInfo: items[index]),
              ),
            );
          }),
    );*/
  }
}
