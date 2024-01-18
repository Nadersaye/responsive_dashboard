import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/views/widgets/income_list_item.dart';

class IncomeListView extends StatelessWidget {
  const IncomeListView({super.key, required this.incomes});
  final List<IncomeModel> incomes;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return IncomeListItem(income: incomes[index]);
        },
        separatorBuilder: (context, index) => const Gap(12),
        itemCount: incomes.length);
  }
}
