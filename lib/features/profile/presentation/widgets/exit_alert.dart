import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class ExitAlert extends StatelessWidget {
  const ExitAlert({
    super.key,
    required this.onYesButton,
    required this.onNoButton, required this.title,
  });

  final String title;
  final VoidCallback onYesButton;
  final VoidCallback onNoButton;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: onNoButton,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Нет',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.modalBlue,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: onYesButton,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'Да',
              style: AppTextStyle.textField16.copyWith(
                color: AppColors.modalBlue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
