import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        const Expanded(
            child: SizedBox(
          width: 20,
        )),
        Text('See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: AppColors.blueColor))
      ],
    );
  }
}
