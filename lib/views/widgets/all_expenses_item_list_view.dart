import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});
  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<ExpensesItemModel> items = [
    const ExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        amount: 20.129),
    const ExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        amount: 20.129),
    const ExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        amount: 20.129),
  ];
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
              item: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
              item: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const Gap(12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
              item: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
