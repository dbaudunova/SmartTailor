import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/bloc/history_bloc.dart';

class HistoryDetailContent extends StatefulWidget {
  final int id;
  const HistoryDetailContent({required this.id, super.key});

  @override
  State<HistoryDetailContent> createState() => _HistoryDetailContentState();
}

class _HistoryDetailContentState extends State<HistoryDetailContent> {
  final _orderName = TextEditingController();
  final _orderDescription = TextEditingController();
  final _employees = TextEditingController();
  final _orderPrice = TextEditingController();
  final _orderCompletionDate = TextEditingController();
  final _customerFullName = TextEditingController();
  final _customerContacts = TextEditingController();

  HistoryBloc get _bloc => context.read<HistoryBloc>();
  @override
  void initState() {
    _bloc.add(HistoryEvent.getDetailedHistoryOrder(id: widget.id));
    super.initState();
  }

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
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          var detailedHistory = state.detailedModel;
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: detailedHistory.name,
                  ),
                  titleName: 'Название заказа',
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: detailedHistory.description,
                  ),
                  titleName: 'Описание заказа',
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: detailedHistory.employees.map((employee) => employee.fullName).join(', '),
                  ),
                  titleName: 'Сотрудники',
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: detailedHistory.price.toString(),
                  ),
                  titleName: 'Сумма заказа',
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: DateFormat.MMMMEEEEd().format(detailedHistory.dateOfCompletion),
                  ),
                  titleName: 'Дата выполнения заказа',
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: detailedHistory.authorFullName,
                  ),
                  titleName: 'ФИО заказчика',
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  enabled: false,
                  controller: TextEditingController(
                    text: detailedHistory.authorContactInfo,
                  ),
                  titleName: 'Контакты заказчика',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
