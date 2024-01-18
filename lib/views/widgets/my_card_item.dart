import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_styles.dart';
import 'my_card_number_data.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: AppColors.blueColor,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.imagesDashboardBackground))),
          child: const MyCardBody(),
        ),
      ),
    );
  }
}

class MyCardBody extends StatelessWidget {
  const MyCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.fromLTRB(31, 15, 45, 0),
          title: Text(
            'Name card',
            style:
                AppStyles.styleRegular16.copyWith(color: AppColors.whiteColor),
          ),
          subtitle: Text('Syah Bandi',
              style: AppStyles.styleSemiBold20.copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.whiteColor)),
          trailing: SvgPicture.asset(Assets.imagesGallery),
        ),
        const Spacer(),
        const MyCardNumberDate()
      ],
    );
  }
}
