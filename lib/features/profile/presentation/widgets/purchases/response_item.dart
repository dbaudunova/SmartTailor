import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class ResponseItem extends StatelessWidget {
  const ResponseItem({
    super.key,
    required this.onButtonPressed,
  });

  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Имя Фамилия',
          style: AppTextStyle.textField16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
            ),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              AppColors.darkBlue,
            ),
          ),
          onPressed: onButtonPressed,
          child: Text(
            'Принять',
            style: AppTextStyle.text14.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
