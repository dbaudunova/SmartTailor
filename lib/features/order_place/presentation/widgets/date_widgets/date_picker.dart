import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/date_widgets/date_picker_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class DatePickerFieldWidget extends StatefulWidget {
  final Function(DateTime selectedDate) onDateSelected;
  final TextEditingController controller;

  const DatePickerFieldWidget({
    required this.onDateSelected,
    required this.controller,
    super.key,
  });

  @override
  State<DatePickerFieldWidget> createState() => _DatePickerFieldWidgetState();
}

class _DatePickerFieldWidgetState extends State<DatePickerFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Выберите крайнюю дату выполнения';
        }
        return null;
      },
      controller: widget.controller,
      enabled: false,
      hintText: t.lastDate,
      titleName: 'Дата',
      ontap: _callDatePicker,
      suffixIcon: Icons.keyboard_arrow_down_sharp,
    );
  }

  void _callDatePicker() {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return DatePickerWidget(
          dateController: widget.controller,
          onDateSelected: (selectedDate) {
            widget.onDateSelected(selectedDate);
          },
        );
      },
    );
  }
}
