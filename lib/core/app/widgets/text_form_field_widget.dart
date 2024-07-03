part of io_ui;

enum OrderType {
  order('Заказ'),
  equipment('Оборудование'),
  services('Услуги');

  final String name;

  const OrderType(this.name);
}

class TextFormFieldWidget extends StatelessWidget {
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final void Function(OrderType type)? onSelect;
  final SheetType? actionType;
  final Function? ontap;
  final bool? enabled;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final String? titleName;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLenght;
  final int? minLenght;

  const TextFormFieldWidget({
    required this.controller,
    super.key,
    this.titleName,
    this.onChanged,
    this.keyboardType,
    this.formatters = const [],
    this.validator,
    this.hintText,
    this.maxLenght,
    this.minLenght,
    this.ontap,
    this.enabled,
    this.suffixIcon,
    this.onSelect,
    this.actionType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleName != null
            ? Text(
                titleName!,
                style: controller.text.isEmpty
                    ? AppTextStyle.textField16
                    : AppTextStyle.textField16.copyWith(color: AppColors.black.withOpacity(0.10)),
              )
            : Container(),
        const SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: () {
            _handleAction(context, actionType!);
            // _showActionSheet();
          },
          child: TextFormField(
            enabled: enabled,
            maxLength: maxLenght,
            validator: validator,
            style: titleName == t.email ? AppTextStyle.textField16.copyWith(fontSize: 14) : AppTextStyle.textField16,
            inputFormatters: formatters,
            keyboardType: keyboardType,
            onChanged: onChanged,

            decoration: InputDecoration(
              suffixIcon: Icon(
                suffixIcon,
                color: AppColors.fieldBorder,
              ),
              hintText: hintText ?? '',
              border: _buildBorder(),
              errorBorder: _buildBorder(),
              focusedBorder: _buildBorder(),
              enabledBorder: _buildBorder(),
              fillColor: AppColors.white,
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
            ),
            // validator: widget.validator,
            controller: controller,
          ),
        ),
      ],
    );
  }

  void _handleAction(BuildContext ctx, SheetType actionType) {
    print(actionType.toString());
    switch (actionType) {
      case SheetType.photos:
        _showActionSheet(ctx, actionType);
      case SheetType.type:
        _showActionSheet(ctx, actionType);
        break;
      case SheetType.data:
        _callDatePicker(ctx);
        break;
      case SheetType.size:
        _callBottomSheet(ctx);
        break;
    }
  }

  void _callBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return const SizeSelectionBottomSheet();
      },
    );
  }

  // void _showActionSheet(BuildContext context, SheetType type) {
  //   showCupertinoModalPopup(
  //     context: context,
  //     builder: (BuildContext context) => ActionSheetWidget(
  //       type: type,
  //       bloc: context.read<OrderPlaceBloc>(),
  //       actions: OrderType.values
  //           .map(
  //             (e) => AppActionSheetWidget(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //                 widget.onSelect?.call(e);
  //               },
  //               text: e.name,
  //             ),
  //           )
  //           .toList(),
  //     ),
  //   );
  // }

  void _callDatePicker(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerWidget(
          onDateSelected: (DateTime selectedDate) {},
        );
      },
    );
  }

  void _showActionSheet(BuildContext context, SheetType type) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => ActionSheetWidget(
        type: type,
        bloc: context.read<OrderPlaceBloc>(),
        actions: OrderType.values
            .map(
              (e) => AppActionSheetWidget(
                onPressed: () {
                  controller.text = e.name;
                  Navigator.pop(context);
                  onSelect?.call(e);
                },
                text: e.name,
              ),
            )
            .toList(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(width: 1, color: AppColors.fieldBorder),
    );
  }
}
