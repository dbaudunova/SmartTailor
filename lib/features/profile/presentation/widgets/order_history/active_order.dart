import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class ActiveOrderContainer extends StatelessWidget {
  const ActiveOrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Заказы:',
                  style: AppTextStyle.textField16,
                ),
                SizedBox(height: 8),
                Text(
                  'Сумма:',
                  style: AppTextStyle.textField16,
                ),
                SizedBox(height: 8),
                Text(
                  'Статус:',
                  style: AppTextStyle.textField16,
                ),
                SizedBox(height: 8),
                Text(
                  'Дата принятия:',
                  style: AppTextStyle.textField16,
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '№234',
                  style: AppTextStyle.textField16,
                ),
                const SizedBox(height: 8),
                const Text(
                  '100 сом',
                  style: AppTextStyle.textField16,
                ),
                const SizedBox(height: 8),
                Text(
                  'Прибыл',
                  style: AppTextStyle.textField16.copyWith(color: Colors.green),
                ),
                const SizedBox(height: 8),
                const Text(
                  '10.04.2024',
                  style: AppTextStyle.textField16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
