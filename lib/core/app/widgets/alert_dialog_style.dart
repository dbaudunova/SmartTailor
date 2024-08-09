import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class AlertDialogStyle extends StatelessWidget {
  const AlertDialogStyle({
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onButtonPressed,
    super.key,
  });

  final String title;
  final String content;
  final String buttonText;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        title,
        style: AppTextStyle.textField16.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          content,
          style: AppTextStyle.textField16.copyWith(
            fontSize: 14,
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: onButtonPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              buttonText,
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
