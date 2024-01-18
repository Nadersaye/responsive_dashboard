import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'card_transaction_income_section.dart';
import 'expenses_invoice.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesInvoice(),
          Gap(24),
          CustomTransactionIncomeSection()
        ],
      ),
    ));
  }
}
