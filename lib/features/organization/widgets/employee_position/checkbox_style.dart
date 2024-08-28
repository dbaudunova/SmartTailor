import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CheckboxStyle extends StatelessWidget {
  const CheckboxStyle({
    required this.title,
    required this.value,
    super.key,
    this.onChanged,
  });
  final void Function(bool?)? onChanged;
  final String title;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      checkboxShape: const CircleBorder(),
      title: Text(
        title,
        style: AppTextStyle.text14,
      ),
      side: const BorderSide(color: AppColors.greyText),
      controlAffinity: ListTileControlAffinity.leading,
      value: value,
      activeColor: Colors.blue,
      onChanged: onChanged,
    );
  }
}
