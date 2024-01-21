import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../models/expenses_item_model.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.item,
  });

  final ExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: AppColors.blueColor,
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
            isSelected: true,
          ),
          const SizedBox(height: 34),
          Text(item.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: AppColors.whiteColor)),
          const Gap(8),
          Text(item.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: AppColors.mediumGreyColor)),
          const Gap(16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(r"$" "${item.amount.toString()}",
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: AppColors.whiteColor)),
          )
        ],
      ),
    );
  }
}
