import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';

class CustomDropdown extends StatelessWidget {
  final List<Item> items;
  const CustomDropdown({
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownMenu(
          dropdownMenuEntries: items.map<DropdownMenuEntry<Item>>((Item item) {
            return DropdownMenuEntry<Item>(
              value: item,
              label: '${item.size} (Qty: ${item.quantity})',
              // style: MenuItemButton.styleFrom(
              //   foregroundColor: label.color,
              // ),
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
