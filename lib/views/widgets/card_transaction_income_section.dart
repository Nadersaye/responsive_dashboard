import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/custom_divider.dart';
import '../../utils/app_colors.dart';
import 'income_section.dart';
import 'my_card_section.dart';
import 'transaction_section.dart';

class CustomTransactionIncomeSection extends StatelessWidget {
  const CustomTransactionIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.fromLTRB(24, 40, 32, 0),
      color: AppColors.whiteColor,
      padding: const EdgeInsets.all(24.0),
      child: const Column(
        children: [
          MyCardSection(),
          CustomDivider(
            height: 40,
          ),
          TransactionSection(),
          Gap(24),
          IncomeSection()
        ],
      ),
    );
  }
}
