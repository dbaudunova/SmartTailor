import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/bloc/current_order_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/organization_info/status_bottom_sheet.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';

class CurrentOrderDetailContent extends StatefulWidget {
  final int id;

  const CurrentOrderDetailContent({required this.id, super.key});

  @override
  State<CurrentOrderDetailContent> createState() => _CurrentOrderDetailContentState();
}

class _CurrentOrderDetailContentState extends State<CurrentOrderDetailContent> {
  @override
  void initState() {
    context.read<CurrentOrderBloc>().add(CurrentOrderEvent.getDetailedOrder(id: widget.id));
    super.initState();
  }

  bool _isEmployeeExpanded = false;
  final List<Map> _statusList = [
    {'name': 'Прибыл', 'isChecked': false},
    {'name': 'В работе', 'isChecked': false},
    {'name': 'В ожидании', 'isChecked': false},
    {'name': 'Отправка', 'isChecked': false},
    {'name': 'Проверка', 'isChecked': false},
  ];
  final DateTime _orderDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Детали заказа',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: BlocBuilder<CurrentOrderBloc, CurrentOrderState>(
        builder: (context, state) {
          var detailedOrder = state.detailedOrder;
          var dateStr = DateFormat('yyyy-MM-dd').format(detailedOrder.dateOfExecution!);
          return Column(
            children: [
              GalleryWidget(
                date: dateStr,
                images: detailedOrder.images,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildStatusRow(detailedOrder),
                              const SizedBox(height: 8),
                              Text(
                                detailedOrder.name!,
                                style: AppTextStyle.textField16.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                detailedOrder.description!,
                                style: AppTextStyle.s12w400.copyWith(
                                  color: AppColors.greyText,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.greyText,
                                  ),
                                ),
                                child: _buildRow(
                                  isExpanded: _isEmployeeExpanded,
                                  onPressed: () {
                                    setState(() {
                                      _isEmployeeExpanded = !_isEmployeeExpanded;
                                    });
                                  },
                                  title: 'Сотрудники',
                                ),
                              ),
                              if (_isEmployeeExpanded)
                                _buildEmployeeListView(
                                  detailedOrder,
                                ),
                              const SizedBox(height: 16),
                              _buildPriceRow(detailedOrder),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 16,
                                  bottom: 24,
                                ),
                                child: Divider(
                                  color: AppColors.greyText,
                                ),
                              ),
                              _buildAuthorInfo(detailedOrder),
                              const SizedBox(height: 16),
                              _buildTransparentButton(
                                backgroundColor: Colors.white,
                                strokeColor: AppColors.greyText,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return ExitAlert(
                                        confirmButton: () {
                                          Navigator.pop(context);
                                          _buildShowModalBottomSheet(context);
                                        },
                                        cancelButton: () {
                                          AutoRouter.of(context).maybePop();
                                        },
                                        title: 'Хотите изменить статус?',
                                      );
                                    },
                                  );
                                },
                                text: 'Изменить статус',
                              ),
                              const SizedBox(height: 8),
                              _buildTransparentButton(
                                backgroundColor: AppColors.error,
                                onPressed: () {},
                                textColor: Colors.white,
                                text: 'Отменить заказ',
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Row _buildPriceRow(CurrentDetailOrderEntity detailedOrder) {
    var price = detailedOrder.price!.toInt();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Сумма заказа',
          style: AppTextStyle.textField16.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          '$price сом',
          style: AppTextStyle.textField16.copyWith(
            color: AppColors.orange,
          ),
        ),
      ],
    );
  }

  void _buildShowModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      context: context,
      builder: (context) {
        return StatusBottomSheet(statusList: _statusList);
      },
    );
  }

  ListView _buildEmployeeListView(CurrentDetailOrderEntity detailedOrder) {
    var employees = detailedOrder.employees;
    return ListView.builder(
      itemCount: employees!.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var employee = employees[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  employee.fullName!,
                  style: AppTextStyle.textField16.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(color: AppColors.lightOrange, borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    'Назначить',
                    style: AppTextStyle.textField16,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Row _buildStatusRow(CurrentDetailOrderEntity detailedOrder) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Заказ № ${detailedOrder.id}',
          style: AppTextStyle.textField16.copyWith(
            color: AppColors.listBlue,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.lightBLue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            detailedOrder.status!,
            style: AppTextStyle.s12w400.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTransparentButton({
    required VoidCallback onPressed,
    required String text,
    required Color backgroundColor,
    Color? strokeColor,
    Color? textColor,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: strokeColor ?? Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            text,
            style: AppTextStyle.textField16.copyWith(
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Row _buildAuthorInfo(CurrentDetailOrderEntity detailedOrder) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.greyText,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              detailedOrder.authorFullName!,
              style: AppTextStyle.text14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Автор объявления',
              style: AppTextStyle.text14.copyWith(
                color: AppColors.greyText,
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone,
            color: AppColors.listGreen,
          ),
        ),
      ],
    );
  }

  Row _buildRow({
    required bool isExpanded,
    required Function() onPressed,
    String? title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title ?? '',
            style: AppTextStyle.textField16.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
