import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CurrentOrdersContainer extends StatelessWidget {
  const CurrentOrdersContainer({
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
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Заказ №234',
                  style: AppTextStyle.text14.copyWith(
                    color: AppColors.listBlue,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lightBLue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'В работе',
                    style: AppTextStyle.s12w400.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Сшить костюм',
                  style: AppTextStyle.textField16.copyWith(
                    color: AppColors.darkBlue,
                  ),
                ),
                Text(
                  '1000 сом',
                  style: AppTextStyle.textField16.copyWith(
                    color: AppColors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectet consectet...',
              style: AppTextStyle.text14.copyWith(
                color: AppColors.darkBlue,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
