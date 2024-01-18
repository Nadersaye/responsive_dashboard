import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import 'custom_select_rate.dart';

class CustomIncomeHeader extends StatelessWidget {
  const CustomIncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        Expanded(
            child: SizedBox(
          width: 20,
        )),
        CustomSelectRate()
      ],
    );
  }
}
