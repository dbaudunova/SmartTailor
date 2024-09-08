import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CustomerContainer extends StatelessWidget {
  const CustomerContainer({
    required this.name,
    required this.email,
    this.onTap,
    this.isOrder = false,
    super.key,
  });

  final String name;
  final String email;
  final void Function()? onTap;
  final bool isOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 2,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 2,
                    style: AppTextStyle.textField16.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: AppTextStyle.s12w400,
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            ),
            if (isOrder)
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration:
                  BoxDecoration(color: AppColors.lightOrange, borderRadius: BorderRadiusDirectional.circular(6)),
                  child: const Text(
                    'Принять',
                    style: AppTextStyle.text14,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
