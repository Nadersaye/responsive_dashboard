import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

import '../../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        Expanded(
            child: SizedBox(
          width: 20,
        )),
        QuickInvoiceHeaderAddIcon(),
      ],
    );
  }
}

class QuickInvoiceHeaderAddIcon extends StatelessWidget {
  const QuickInvoiceHeaderAddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 24,
      backgroundColor: AppColors.mediumGreyColor,
      child: Center(
        child: Icon(
          Icons.add,
          color: AppColors.blueColor,
        ),
      ),
    );
  }
}
