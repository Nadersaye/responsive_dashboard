import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/models/amout_state.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_list_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static List<TransactionModel> transactions = [
    TransactionModel(
        trailing: '20,129',
        title: "Cash Withdrawal",
        subTitle: '13 Apr, 2022 ',
        state: AmountStates.withdraw),
    TransactionModel(
        trailing: '2,000',
        title: 'Landing Page project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        state: AmountStates.deposit),
    TransactionModel(
        trailing: '20,129',
        title: 'Juni Mobile App project',
        subTitle: '13 Apr, 2022 at 3:30 PM',
        state: AmountStates.deposit)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (contect, index) {
        return TransactionListItem(transactionModel: transactions[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(12);
      },
      itemCount: transactions.length,
    );
  }
}
