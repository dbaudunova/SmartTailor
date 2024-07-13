import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/marketplace_detail_screen/presentation/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/status_bottom_sheet.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';

@RoutePage()
class CurrentOrderDetailScreen extends StatefulWidget {
  const CurrentOrderDetailScreen({super.key});

  @override
  State<CurrentOrderDetailScreen> createState() =>
      _CurrentOrderDetailScreenState();
}

class _CurrentOrderDetailScreenState extends State<CurrentOrderDetailScreen> {
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
      body: Column(
        children: [
           GalleryScreen(date: _orderDate),
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
                      padding: const EdgeInsets.symmetric(horizontal: 16)
                          .copyWith(top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildStatusRow(),
                          const SizedBox(height: 8),
                          Text(
                            'Сшить костюм',
                            style: AppTextStyle.textField16.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
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
                          if (_isEmployeeExpanded) _buildEmployeeListView(),
                          const SizedBox(height: 16),
                          _buildPriceRow(),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 16,
                              bottom: 24,
                            ),
                            child: Divider(
                              color: AppColors.greyText,
                            ),
                          ),
                          _buildAuthorInfo(),
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
      ),
    );
  }

  Row _buildPriceRow() {
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
          '1000 сом',
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

  ListView _buildEmployeeListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: _buildEmployeeItemBuilder,
    );
  }

  Widget? _buildEmployeeItemBuilder(context, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Text(
        'Имя Фамилия Отчество',
        style: AppTextStyle.textField16.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Row _buildStatusRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Заказ №234',
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
            'В работе',
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

  Row _buildAuthorInfo() {
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
              'Sandy Wilder Cheng',
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
            style:
            AppTextStyle.textField16.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            isExpanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
