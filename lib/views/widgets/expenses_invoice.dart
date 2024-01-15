import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_section.dart';

class ExpensesInvoice extends StatelessWidget {
  const ExpensesInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Expanded(child: AllExpenses()),
        Gap(24),
        Expanded(flex: 2, child: QuikInvoiceSection())
      ],
    );
  }
}
