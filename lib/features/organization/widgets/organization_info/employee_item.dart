import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class EmployeeItemContainer extends StatelessWidget {
  final String fullName;
  final String email;
  final String position;
  const EmployeeItemContainer({
    required this.fullName,
    required this.email,
    required this.position,
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
        child: Container(
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
                  fullName,
                  style: AppTextStyle.textField16.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  position,
                  style: AppTextStyle.text14,
                ),
                const SizedBox(height: 8),
                Text(
                  email,
                  style: AppTextStyle.text14.copyWith(
                    color: AppColors.greyText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
