import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class DatePickerWidget extends StatefulWidget {
  final Function(DateTime) onDateSelected;
  final TextEditingController dateController;

  const DatePickerWidget({required this.onDateSelected, required this.dateController, super.key});

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SizedBox(
                  height: constraints.maxHeight * 0.5,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    maximumYear: DateTime.now().year + 25,
                    minimumYear: DateTime.now().year,
                    onDateTimeChanged: (DateTime dateTime) {
                      setState(() {
                        var date = DateFormat('yyyy-MM-dd').format(dateTime);
                        widget.dateController.text = date;
                      });
                      widget.onDateSelected(dateTime);
                    },
                  ),
                ),
              ),
              CupertinoButton(
                child: const Text(
                  'Выбрать',
                  style: AppTextStyle.textField16,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  // }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
