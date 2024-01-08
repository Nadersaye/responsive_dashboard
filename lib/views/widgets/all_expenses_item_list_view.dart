import 'package:flutter/material.dart';
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
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return Expanded(
        child: GestureDetector(
          onTap: () {
            if (index != selectedIndex) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensesItem(
              item: item,
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      );
    }).toList());
  }
}
