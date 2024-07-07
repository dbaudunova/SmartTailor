import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CustomerContainer extends StatelessWidget {
  const CustomerContainer({
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
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 16,
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.greyText,
              radius: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Имя Фамилия',
                    style: AppTextStyle.textField16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '+996 700 010 101',
                    style: AppTextStyle.s12w400,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Оборудование',
                    style: AppTextStyle.s12w400.copyWith(
                      color: AppColors.listGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
