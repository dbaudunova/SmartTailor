import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/employee_position/checkbox_style.dart';

class StatusBottomSheet extends StatelessWidget {
  const StatusBottomSheet({
    required List<Map> statusList,
    super.key,
  }) : _statusList = statusList;

  final List<Map> _statusList;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 24),
                child: Text(
                  'Выберите статус',
                  style: AppTextStyle.textField16
                      .copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Column(
                children: _statusList.map((list) {
                  return CheckboxStyle(
                    title: list['name'],
                    value: list['isChecked'],
                    onChanged: (bool? value) {
                      setState(() {
                        for (var status in _statusList) {
                          status['isChecked'] = false;
                        }
                        list['isChecked'] = value;
                      });
                      Navigator.pop(context);
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
