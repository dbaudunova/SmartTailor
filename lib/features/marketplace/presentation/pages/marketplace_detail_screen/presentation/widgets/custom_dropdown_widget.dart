import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownMenu(
          dropdownMenuEntries: Sizes.values.map<DropdownMenuEntry<Sizes>>((Sizes label) {
            return DropdownMenuEntry<Sizes>(
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
          width: MediaQuery.of(context).size.width - 32,
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.only(
              left: 16,
              right: 2,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xFFC4C4C4)),
            ),
            fillColor: AppColors.white,
          ),
          menuStyle: MenuStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.white),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide.none,
              ),
            ),
          ),
          // Add properties to manage height if available
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

enum Sizes {
  m('M'),
  s('S'),
  l('L'),
  xl('XL');

  const Sizes(this.label);
  final String label;
  final Color color = AppColors.black;
}
