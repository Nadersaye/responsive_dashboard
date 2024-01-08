import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_widget.dart';

import 'latest_transaction_list_view.dart';
import 'quick_invoice_header.dart';

class QuikInvoiceSection extends StatelessWidget {
  const QuikInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
        padding: 24,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            Gap(24),
            Text('Latest Transaction', style: AppStyles.styleMedium16),
            Gap(12),
            LatestTransactionListView()
          ],
        ));
  }
}
