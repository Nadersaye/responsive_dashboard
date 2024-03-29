import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'card_transaction_income_section.dart';
import 'expenses_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Gap(32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: ExpensesInvoice()),
                    Gap(24),
                    Expanded(child: CustomTransactionIncomeSection()),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
