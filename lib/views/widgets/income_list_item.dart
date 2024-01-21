import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeListItem extends StatelessWidget {
  const IncomeListItem({super.key, required this.income});
  final IncomeModel income;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 6,
        foregroundColor: income.color,
      ),
      title: Text(income.title, style: AppStyles.styleSemiBold16(context)),
      trailing: Text(
        '${income.value}%',
        style: AppStyles.styleMedium16(context)
            .copyWith(color: AppColors.incomeBlue),
      ),
    );
  }
}
