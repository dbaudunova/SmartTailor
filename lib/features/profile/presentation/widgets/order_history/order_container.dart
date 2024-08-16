import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    required this.onTap,
    required this.id,
    required this.name,
    required this.price,
    required this.date,
    this.isActive = true,
    super.key,
    this.status,
  });

  final bool isActive;
  final VoidCallback onTap;
  final int id;
  final String name;
  final double price;
  final String date;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Заказы:',
                    style: AppTextStyle.textField16,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Сумма:',
                    style: AppTextStyle.textField16,
                  ),
                  if (isActive) ...[
                    const SizedBox(height: 8),
                    const Text(
                      'Статус:',
                      style: AppTextStyle.textField16,
                    ),
                  ],
                  const SizedBox(height: 8),
                  const Text(
                    'Дата принятия:',
                    style: AppTextStyle.textField16,
                  ),
                ],
              ),
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
                  if (isActive) ...[
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Прибыл',
                      style: AppTextStyle.textField16.copyWith(color: Colors.green),
                    ),
                  ],
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
      ),
    );
  }
}
