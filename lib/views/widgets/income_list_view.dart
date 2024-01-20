import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_model.dart';
import 'package:responsive_dashboard/views/widgets/income_list_item.dart';

class IncomeListView extends StatelessWidget {
  const IncomeListView({super.key, required this.incomes});
  final List<IncomeModel> incomes;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomes
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: IncomeListItem(income: e),
              ))
          .toList(),
    );
  }
}
