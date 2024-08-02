import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/size_widgets/size_selection_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

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
  late Map<String, TextEditingController> _quantityControllers;
  final TextEditingController _sizeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeControllers();
  }

  void _initializeControllers() {
    final items = context.read<OrderPlaceBloc>().state.orderPlaceModel.items;
    _quantityControllers = {
      for (var item in items)
        item.size: TextEditingController(
          text: item.quantity.toString(),
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderPlaceBloc, OrderPlaceState>(
      listener: (context, state) {
        final items = state.orderPlaceModel.items;
        _sizeController.text = items.isEmpty ? '' : items.map((item) => '${item.size} - ${item.quantity}').join(', ');
      },
      child: _buildTextFormField(),
    );
  }

  TextFormFieldWidget _buildTextFormField() {
    return TextFormFieldWidget(
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
    );
  }

  void _callBottomSheet() {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: getIt<OrderPlaceBloc>(),
          child: SizeSelectionBottomSheet(
            sizeController: _sizeController,
            onSizeSelected: (selectedSize) {
              widget.onSizeSelected(selectedSize);
            },
            quantityControllers: _quantityControllers,
          ),
        );
      },
    );
  }
}
