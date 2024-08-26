import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/order_status_enum.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/employee_position/checkbox_style.dart';

class StatusBottomSheet extends StatelessWidget {
  const StatusBottomSheet({
    required this.selectedStatus,
    required this.onTap,
    super.key,
  });

  final OrderStatus selectedStatus;
  final Function(String file) onTap;

  @override
  Widget build(BuildContext context) {
    final statusList = OrderStatus.values
        .where((status) => status != OrderStatus.notConfirmed && status != OrderStatus.completed)
        .toList();
    int? currentCheckedIndex = statusList.indexOf(selectedStatus);

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
                  style: AppTextStyle.textField16.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              Column(
                children: statusList.map((orderStatus) {
                  var index = statusList.indexOf(orderStatus);
                  return CheckboxStyle(
                    title: getOrderStatusTypeLabel(orderStatus),
                    value: selectedStatus == orderStatus,
                    onChanged: (bool? value) {
                      if (value == true) {
                        if (currentCheckedIndex == null ||
                            (index == currentCheckedIndex! - 1 || index == currentCheckedIndex! + 1)) {
                          final changeValue = index < currentCheckedIndex! ? 'MINUS' : 'PLUS';
                          onTap(changeValue);
                          setState(() {
                            currentCheckedIndex = index;
                            Navigator.pop(context, orderStatus);
                          });
                        } else {
                          _buildWarning(context);
                        }
                      }
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

  Future<dynamic> _buildWarning(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Предупреждение'),
          content: const Text('Можно выбрать только соседний статус.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
