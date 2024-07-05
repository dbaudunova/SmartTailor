import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/size_selection_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class SizePickerFieldWidget extends StatefulWidget {
  final Function(String) onSizeSelected;
  const SizePickerFieldWidget({
    required this.onSizeSelected,
    super.key,
  });

  @override
  State<SizePickerFieldWidget> createState() => _SizePickerFieldWidgetState();
}

class _SizePickerFieldWidgetState extends State<SizePickerFieldWidget> {
  final _sizeController = TextEditingController();

  @override
  void dispose() {
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: _sizeController,
      enabled: false,
      ontap: _callBottomSheet,
      hintText: t.sizeFieldText,
      titleName: t.sizes,
      suffixIcon: Icons.keyboard_arrow_down_sharp,
    );
  }

  // void _onTap() {

  // }

  void _callBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        // _sizeController.text = context.read<OrderPlaceBloc>().state.orderPlaceModel.sizes.join(', ');
        return SizeSelectionBottomSheet(
          sizeController: _sizeController,
          onSizeSelected: (selectedSize) {
            widget.onSizeSelected(selectedSize);
          },
        );
      },
    );
  }

  //   void _callDatePicker() {
  //   showModalBottomSheet<void>(
  //     context: context,
  //     builder: (context) {
  //       return DatePickerWidget(
  //         dateController: _dateController,
  //         onDateSelected: (selectedDate) {
  //           widget.onDateSelected(selectedDate);
  //         },
  //       );
  //     },
  //   );
  // }
}
