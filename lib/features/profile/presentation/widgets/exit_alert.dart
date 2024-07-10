import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class ExitAlert extends StatelessWidget {
  const ExitAlert({
    required this.confirmButton,
    required this.cancelButton,
    required this.title,
    super.key,
  });

  final String title;
  final VoidCallback confirmButton;
  final VoidCallback cancelButton;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: cancelButton,
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
          onPressed: confirmButton,
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
