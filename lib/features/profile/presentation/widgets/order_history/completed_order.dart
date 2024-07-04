import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CompletedOrderContainer extends StatelessWidget {
  const CompletedOrderContainer({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Column(
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
                    'Дата завершения:',
                    style: AppTextStyle.textField16,
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '№234',
                    style: AppTextStyle.textField16,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '100 сом',
                    style: AppTextStyle.textField16,
                  ),
                  SizedBox(height: 8),
                  Text(
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
