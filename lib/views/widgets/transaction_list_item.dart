import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/amout_state.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import '../../utils/app_styles.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.mediumGreyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        trailing: Text(transactionModel.trailing,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color: (transactionModel.state == AmountStates.withdraw)
                  ? AppColors.amoutRed
                  : AppColors.amoutGreen,
            )),
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
