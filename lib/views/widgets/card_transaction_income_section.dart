import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTransactionIncomeSection extends StatelessWidget {
  const CustomTransactionIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: AspectRatio(
              aspectRatio: 420 / 215,
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.blueColor,
                    image: DecorationImage(
                        image: AssetImage(Assets.imagesDashboardBackground))),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.fromLTRB(31, 15, 45, 0),
                      title: Text(
                        'Name card',
                        style: AppStyles.styleRegular16
                            .copyWith(color: AppColors.whiteColor),
                      ),
                      subtitle: Text('Syah Bandi',
                          style: AppStyles.styleSemiBold20.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor)),
                      trailing: SvgPicture.asset(Assets.imagesGallery),
                    ),
                    const Spacer(),
                    Text('0918 8124 0042 8129',
                        style: AppStyles.styleSemiBold24
                            .copyWith(color: AppColors.whiteColor)),
                    const Gap(12),
                    Text('12/20 - 124',
                        style: AppStyles.styleRegular16
                            .copyWith(color: AppColors.whiteColor))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
