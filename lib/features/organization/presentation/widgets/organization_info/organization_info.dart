import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class EmployeeItemContainer extends StatelessWidget {
  const EmployeeItemContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Имя Фамилия Отчество',
              style: AppTextStyle.textField16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Должность',
              style: AppTextStyle.text14,
            ),
            const SizedBox(height: 8),
            Text(
              'Почта',
              style: AppTextStyle.text14.copyWith(
                color: AppColors.greyText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
