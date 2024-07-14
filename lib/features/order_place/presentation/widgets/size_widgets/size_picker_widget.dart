import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/size_widgets/size_selection_widget.dart';
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
    return BlocListener<OrderPlaceBloc, OrderPlaceState>(
      listener: (context, state) {
        final sizes = state.orderPlaceModel.sizes;
        _sizeController.text = sizes.isEmpty ? '' : sizes.join(', ');
      },
      child: TextFormFieldWidget(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Выберите размеры';
          }
          return null;
        },
        controller: _sizeController,
        enabled: false,
        ontap: _callBottomSheet,
        hintText: t.sizeFieldText,
        titleName: t.sizes,
        suffixIcon: Icons.keyboard_arrow_down_sharp,
      ),
    );
  }

  void _callBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizeSelectionBottomSheet(
          sizeController: _sizeController,
          onSizeSelected: (selectedSize) {
            widget.onSizeSelected(selectedSize);
          },
        );
      },
    );
  }
}
