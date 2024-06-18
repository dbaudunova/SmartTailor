import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: MealLabel.values.map<DropdownMenuEntry<MealLabel>>((MealLabel label) {
        return DropdownMenuEntry<MealLabel>(
          value: label,
          label: label.label,
          style: MenuItemButton.styleFrom(
            foregroundColor: label.color,
          ),
        );
      }).toList(),
      textStyle: AppTextStyle.text14.copyWith(
        color: AppColors.black,
      ),
      label: const Text('Размеры'),
      width: MediaQuery.of(context).size.width - 16,
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: const EdgeInsets.only(left: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(42),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.white,
      ),
      menuStyle: MenuStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide.none,
            ),
          )),
    );
  }
}

enum MealLabel {
  Breakfast('M'),
  Lunch('S'),
  Dinner('L');

  const MealLabel(this.label);
  final String label;
  final Color color = AppColors.black;
}
