import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/data/models/order_place_model.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class SizeSelectionBottomSheet extends StatefulWidget {
  final Function(String) onSizeSelected;
  final TextEditingController sizeController;
  final Map<String, TextEditingController> quantityControllers;

  const SizeSelectionBottomSheet({
    required this.onSizeSelected,
    required this.sizeController,
    required this.quantityControllers,
    super.key,
  });

  @override
  State<SizeSelectionBottomSheet> createState() => _SizeSelectionBottomSheetState();
}

final List<String> _sizes = ['S', 'M', 'L', 'XL'];

class _SizeSelectionBottomSheetState extends State<SizeSelectionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<OrderPlaceBloc, OrderPlaceState>(
        builder: (context, state) {
          var itemsString = _getItemsString(state);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                t.inputSize,
                style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black),
              ),
              const SizedBox(height: AppProps.kPageMargin),
              _buildDropDownMenu(state, context, itemsString),
              const SizedBox(height: AppProps.kPageMargin),
              _buildChips(state, context)
            ],
          );
        },
      ),
    );
  }

  String _getItemsString(OrderPlaceState state) {
    return state.orderPlaceModel.items.map((item) => '${item.size} - ${item.quantity}').join(', ');
  }

  Wrap _buildChips(OrderPlaceState state, BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 16.0,
      children: state.orderPlaceModel.items.map((item) {
        return Chip(
          deleteIcon: SvgPicture.asset(Assets.icons.cross),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(item.size),
              const SizedBox(width: 8),
              _buildQuantityFields(item, context),
            ],
          ),
          onDeleted: () {
            context.read<OrderPlaceBloc>().add(
                  OrderPlaceEvent.removeItem(item: item),
                );
          },
        );
      }).toList(),
    );
  }

  SizedBox _buildQuantityFields(Item item, BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextField(
        controller: widget.quantityControllers[item.size],
        decoration: InputDecoration(
          label: Text(item.quantity.toString()),
          hintText: 'Количество',
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        ),
        keyboardType: TextInputType.number,
        onChanged: (quantity) {
          var quantityInt = int.tryParse(quantity) ?? 0;
          context
              .read<OrderPlaceBloc>()
              .add(OrderPlaceEvent.updateQuantity(item: item.copyWith(quantity: quantityInt)));
        },
      ),
    );
  }

  DropdownMenu<String> _buildDropDownMenu(OrderPlaceState state, BuildContext context, String itemsString) {
    return DropdownMenu(
      dropdownMenuEntries: _sizes.map<DropdownMenuEntry<String>>((String chosenText) {
        return DropdownMenuEntry<String>(
          value: chosenText,
          label: chosenText,
        );
      }).toList(),
      textStyle: AppTextStyle.textField16,
      requestFocusOnTap: false,
      label: Text(state.orderPlaceModel.items.isNotEmpty ? itemsString : 'Выберите размеры'),
      width: MediaQuery.of(context).size.width - 40,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        disabledBorder: const OutlineInputBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            width: 2,
            color: AppColors.fieldBorder,
          ),
        ),
        filled: true,
        fillColor: AppColors.white,
      ),
      menuStyle: MenuStyle(
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.white,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide.none,
          ),
        ),
      ),
      onSelected: (String? size) {
        widget.onSizeSelected(size!);
        widget.sizeController.text = itemsString;
      },
      controller: TextEditingController(
        text: itemsString,
      ),
    );
  }
}
