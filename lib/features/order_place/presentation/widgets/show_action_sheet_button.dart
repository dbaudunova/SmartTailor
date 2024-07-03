import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

enum OrderType { order, equipment, services }

class ShowActionSheetButton extends StatefulWidget {
  final SheetType actionType;
  final String title;
  final String hintText;
  final String chosenText;
  final void Function(OrderType type)? onSelect;

  const ShowActionSheetButton({
    required this.title,
    required this.hintText,
    required this.actionType,
    required this.chosenText,
    super.key,
    this.onSelect,
  });

  @override
  State<ShowActionSheetButton> createState() => _ShowActionSheetButtonState();
}

class _ShowActionSheetButtonState extends State<ShowActionSheetButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTextStyle.textField16,
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: () {
            _showActionSheet(context, widget.actionType);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 12, left: 12, top: 15),
            height: 46,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.fieldBorder),
              borderRadius: BorderRadius.circular(6),
              color: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildText(widget.actionType),
                Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: SvgPicture.asset(Assets.icons.drillIn),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  BlocBuilder<OrderPlaceBloc, OrderPlaceState> _buildText(SheetType sheetType) {
    return BlocBuilder<OrderPlaceBloc, OrderPlaceState>(
      builder: (context, state) {
        String displayText = widget.hintText;
        TextStyle textStyle = AppTextStyle.textField16.copyWith(color: AppColors.greyText);

        if (sheetType == SheetType.type && state.orderPlaceModel.type.isNotEmpty) {
          displayText = widget.chosenText;
          textStyle = AppTextStyle.textField16;
        } else if (sheetType == SheetType.photos && state.orderPlaceModel.images.isNotEmpty) {
          displayText = widget.chosenText;
          textStyle = AppTextStyle.textField16;
        } else if (sheetType == SheetType.size && state.orderPlaceModel.sizes.isNotEmpty) {
          displayText = widget.chosenText;
          textStyle = AppTextStyle.textField16;
        } else if (sheetType == SheetType.data && state.orderPlaceModel.date != null) {
          displayText = widget.chosenText;
          textStyle = AppTextStyle.textField16;
        }

        return Text(
          displayText,
          style: textStyle,
        );
      },
    );
  }

  // void _handleAction(BuildContext ctx, SheetType actionType) {
  //   switch (actionType) {
  //     case SheetType.photos:
  //     case SheetType.type:
  //       _showActionSheet(ctx, actionType);
  //       break;
  //     case SheetType.data:
  //       _callDatePicker();
  //       break;
  //     case SheetType.size:
  //       _callBottomSheet();
  //       break;
  //   }
  // }

  // void _callBottomSheet() {
  //   showModalBottomSheet<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return const SizeSelectionBottomSheet();
  //     },
  //   );
  // }

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
                  Navigator.pop(context);
                  widget.onSelect?.call(e);
                },
                text: e.name,
              ),
            )
            .toList(),
      ),
    );
  }

  // void _callDatePicker() {
  //   showModalBottomSheet<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return DatePickerWidget(
  //         onDateSelected: (DateTime selectedDate) {},
  //       );
  //     },
  //   );
  // }
}

enum SheetType { photos, type, size, data }
