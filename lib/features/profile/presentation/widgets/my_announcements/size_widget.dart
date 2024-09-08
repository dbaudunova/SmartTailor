import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    required this.item,
    super.key,
  });

  final OrderItems item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Размер: ${item.size}', style: AppTextStyle.text14),
          Text('Количество: ${item.quantity}', style: AppTextStyle.text14),
        ],
      ),
    );
  }
}
