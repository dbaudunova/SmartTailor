import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class DetailInfoWidget extends StatelessWidget {
  final int price;
  final String name;
  final String description;
  const DetailInfoWidget({
    required this.price,
    required this.name,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                name,
                style: AppTextStyle.textField16.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              ' $price сом',
              style: AppTextStyle.s20w400Orange,
            )
          ],
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: AppTextStyle.text14.copyWith(color: AppColors.greyText),
        ),
      ],
    );
  }
}
