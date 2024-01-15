import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/app_colors.dart';
import 'custom_quick_invoice_button.dart';

class CustomQuickInvoiceRowButtons extends StatelessWidget {
  const CustomQuickInvoiceRowButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomQuickInvoiceButton(
            text: 'Add more details',
            textColor: AppColors.blueColor,
            buttonColor: AppColors.whiteColor,
          ),
        ),
        Gap(24),
        Expanded(child: CustomQuickInvoiceButton(text: 'Send Money'))
      ],
    );
  }
}
