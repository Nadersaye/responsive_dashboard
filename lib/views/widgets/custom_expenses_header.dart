import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'custom_select_rate.dart';

class CustomExpensesHeader extends StatelessWidget {
  const CustomExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        const Expanded(
            child: SizedBox(
          width: 20,
        )),
        const CustomSelectRate()
      ],
    );
  }
}
