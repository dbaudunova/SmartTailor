import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

enum OrderType {
  order('Заказ'),
  equipment('Оборудование'),
  services('Услуги');

  final String name;
  const OrderType(this.name);
}

class OrderTypePicker extends StatefulWidget {
  final void Function(OrderType type)? onSelect;
  const OrderTypePicker({
    this.onSelect,
    super.key,
  });

  @override
  State<OrderTypePicker> createState() => _OrderTypePickerState();
}

class _OrderTypePickerState extends State<OrderTypePicker> {
  final _orderTypeController = TextEditingController();

  @override
  void dispose() {
    _orderTypeController.dispose();
    super.dispose();
  }

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
        controller: _orderTypeController,
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
                    _orderTypeController.text = type.name;
                  });
                  widget.onSelect?.call(type);
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
