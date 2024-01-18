import 'package:responsive_dashboard/models/amout_state.dart';

class TransactionModel {
  final String trailing;
  final String title;
  final String subTitle;
  final AmountStates state;
  TransactionModel({
    required this.trailing,
    required this.title,
    required this.subTitle,
    required this.state,
  });
}
