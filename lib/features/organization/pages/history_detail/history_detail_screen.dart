import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';

@RoutePage()
class HistoryDetailScreen extends StatefulWidget {
  const HistoryDetailScreen({super.key});

  @override
  State<HistoryDetailScreen> createState() => _HistoryDetailScreenState();
}

class _HistoryDetailScreenState extends State<HistoryDetailScreen> {
  final _orderName = TextEditingController();
  final _orderDescription = TextEditingController();
  final _employees = TextEditingController();
  final _orderPrice = TextEditingController();
  final _orderCompletionDate = TextEditingController();
  final _customerFullName = TextEditingController();
  final _customerContacts = TextEditingController();

  @override
  void dispose() {
    _orderName.dispose();
    _orderDescription.dispose();
    _employees.dispose();
    _orderPrice.dispose();
    _orderCompletionDate.dispose();
    _customerFullName.dispose();
    _customerContacts.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarStyle(
        title: 'Заказы',
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormFieldWidget(
              controller: _orderName,
              titleName: 'Название заказа',
            ),
            const SizedBox(height: 16),
            TextFormFieldWidget(
              controller: _orderDescription,
              titleName: 'Описание заказа',
            ),
            const SizedBox(height: 16),
            TextFormFieldWidget(
              controller: _employees,
              titleName: 'Сотрудники',
            ),
            const SizedBox(height: 16),
            TextFormFieldWidget(
              controller: _orderPrice,
              titleName: 'Сумма заказа',
            ),
            const SizedBox(height: 16),
            TextFormFieldWidget(
              controller: _orderCompletionDate,
              titleName: 'Дата выполнения заказа',
            ),
            const SizedBox(height: 16),
            TextFormFieldWidget(
              controller: _customerFullName,
              titleName: 'ФИО заказчика',
            ),
            const SizedBox(height: 16),
            TextFormFieldWidget(
              controller: _customerContacts,
              titleName: 'Контакты заказчика',
            ),
          ],
        ),
      ),
    );
  }
}
