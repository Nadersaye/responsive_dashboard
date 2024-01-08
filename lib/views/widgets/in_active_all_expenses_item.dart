import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/expenses_item_model.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.item});

  final ExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColors.lightGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            item: item,
            isSelected: false,
          ),
          const SizedBox(height: 34),
          Text(item.title, style: AppStyles.styleSemiBold16),
          const Gap(8),
          Text(item.date,
              style: AppStyles.styleRegular14
                  .copyWith(color: AppColors.greyColor)),
          const Gap(16),
          Text(r"$" "${item.amount.toString()}",
              style: AppStyles.styleSemiBold24
                  .copyWith(color: AppColors.blueColor))
        ],
      ),
    );
  }
}
