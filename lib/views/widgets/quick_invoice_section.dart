import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_divider.dart';
import 'package:responsive_dashboard/views/widgets/customer_form_section.dart';
import 'custom_quick_invoice_row_buttons.dart';
import 'latest_transaction_list_view.dart';
import 'quick_invoice_header.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(
        padding: 24,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuickInvoiceHeader(),
            const Gap(24),
            Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
            const Gap(12),
            const LatestTransactionListView(),
            const CustomDivider(),
            const CustomerFormSection(),
            const Gap(24),
            const CustomQuickInvoiceRowButtons()
          ],
        ));
  }
}
