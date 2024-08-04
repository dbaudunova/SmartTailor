import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

enum OrderType {
  order('Заказы'),
  equipment('Оборудование'),
  services('Услуги');

  final String name;
  const OrderType(this.name);
}

class OrderTypePicker extends StatefulWidget {
  final TextEditingController controller;
  final Function(OrderType type) onSelect;
  const OrderTypePicker({
    required this.controller,
    required this.onSelect,
    super.key,
  });

  @override
  State<OrderTypePicker> createState() => _OrderTypePickerState();
}

class _OrderTypePickerState extends State<OrderTypePicker> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextFormFieldWidget(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Выберите тип объявления';
          }
          return null;
        },
        controller: widget.controller,
        enabled: false,
        ontap: _onTap,
        suffixIcon: Icons.keyboard_arrow_down_sharp,
        hintText: t.typeOrderHint,
        titleName: t.typeOrder,
      ),
    );
  }

  void _onTap() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ActionSheetWidget(
        actions: OrderType.values
            .map(
              (type) => AppActionSheetWidget(
                onPressed: () {
                  setState(() {
                    widget.controller.text = type.name;
                    widget.onSelect(type);
                  });
                  Navigator.pop(context);
                },
                text: type.name,
              ),
            )
            .toList(),
      ),
    );
  }
}
