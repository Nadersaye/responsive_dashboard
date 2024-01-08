import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_list_view.dart';
import 'custom_background_widget.dart';
import 'custom_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CustomExpensesHeader(), Gap(16), AllExpensesItemListView()],
      ),
    );
  }
}
