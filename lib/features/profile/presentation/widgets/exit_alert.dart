import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class ExitAlert extends StatelessWidget {
  const ExitAlert({
    super.key,
    required this.yes,
    required this.no,
    required this.onYesButton,
    required this.onNoButton,
  });

  final String yes;
  final String no;
  final VoidCallback onYesButton;
  final VoidCallback onNoButton;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Вы действительно хотите выйти?'),
      actions: [
        TextButton(
          onPressed: onNoButton,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              no,
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
              yes,
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
