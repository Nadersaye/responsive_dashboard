import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../models/cutomer_text_card_model.dart';
import 'custom_text_card.dart';

class CustomerFormSection extends StatelessWidget {
  const CustomerFormSection({super.key});
  static List<CustomerTextCardModel> items = [
    CustomerTextCardModel(title: 'Customer name', label: 'Type customer name'),
    CustomerTextCardModel(
        title: 'Customer Email', label: 'Type customer email'),
    CustomerTextCardModel(title: 'Item name', label: 'Type customer name'),
    CustomerTextCardModel(title: 'Item mount', label: "USD")
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomerRow(items: items),
        const Gap(24),
        ItemsRow(items: items),
      ],
    );
  }
}

class ItemsRow extends StatelessWidget {
  const ItemsRow({
    super.key,
    required this.items,
  });

  final List<CustomerTextCardModel> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomTextCard(item: items[2])),
        const Gap(16),
        Expanded(child: CustomTextCard(item: items[3])),
      ],
    );
  }
}

class CustomerRow extends StatelessWidget {
  const CustomerRow({
    super.key,
    required this.items,
  });

  final List<CustomerTextCardModel> items;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomTextCard(item: items[0])),
        const Gap(16),
        Expanded(child: CustomTextCard(item: items[1])),
      ],
    );
  }
}
