import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'transaction_header.dart';
import 'transaction_list_view.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const Gap(20),
        Text('13 April 2022',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: AppColors.greyColor)),
        const Gap(16),
        const TransactionListView()
      ],
    );
  }
}
