import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class MyCardNumberDate extends StatelessWidget {
  const MyCardNumberDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 24, 45),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('0918 8124 0042 8129',
              style: AppStyles.styleSemiBold24
                  .copyWith(color: AppColors.whiteColor)),
          const Gap(12),
          Text('12/20 - 124',
              style: AppStyles.styleRegular16
                  .copyWith(color: AppColors.whiteColor)),
        ],
      ),
    );
  }
}
