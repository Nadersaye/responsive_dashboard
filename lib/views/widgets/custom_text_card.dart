import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/customer_text_field.dart';

import '../../models/cutomer_text_card_model.dart';

class CustomTextCard extends StatelessWidget {
  const CustomTextCard({super.key, required this.item});
  final CustomerTextCardModel item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Customer name', style: AppStyles.styleMedium16(context)),
          const Gap(12),
          CustomerTextField(
            item: item,
          )
        ],
      ),
    );
  }
}
