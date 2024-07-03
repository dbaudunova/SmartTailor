import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class SizeSelectionBottomSheet extends StatefulWidget {
  const SizeSelectionBottomSheet({super.key});

  @override
  _SizeSelectionBottomSheetState createState() => _SizeSelectionBottomSheetState();
}

class _SizeSelectionBottomSheetState extends State<SizeSelectionBottomSheet> {
  final List<String> _sizes = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<OrderPlaceBloc, OrderPlaceState>(
        builder: (context, state) {
          var sizes = state.orderPlaceModel.sizes;
          var chosenText = sizes.join(', ');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                t.inputSize,
                style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black),
              ),
              const SizedBox(height: AppProps.kPageMargin),
              _buildDropDownMenu(chosenText, context),
              const SizedBox(height: AppProps.kPageMargin),
              _buildChips(state, context)
            ],
          );
        },
      ),
    );
  }

  Wrap _buildChips(OrderPlaceState state, BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 16.0,
      children: state.orderPlaceModel.sizes.map((size) {
        return Chip(
          deleteIcon: SvgPicture.asset(Assets.icons.cross),
          label: Text(size),
          onDeleted: () {
            context.read<OrderPlaceBloc>().add(OrderPlaceEvent.removeSize(size: size));
          },
        );
      }).toList(),
    );
  }

  DropdownMenu<String> _buildDropDownMenu(String chosenText, BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: _sizes.map<DropdownMenuEntry<String>>((String chosenText) {
        return DropdownMenuEntry<String>(
          value: chosenText,
          label: chosenText,
        );
      }).toList(),
      textStyle: AppTextStyle.textField16,
      requestFocusOnTap: false,
      label: Text(chosenText.isNotEmpty ? chosenText : 'Выберите размеры'),
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
      onSelected: (Object? size) {
        if (size is String) {
          context.read<OrderPlaceBloc>().add(
                OrderPlaceEvent.addSize(size: size),
              );
        }
      },
    );
  }
}
