import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/employee_detail_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/bloc/employee_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/employee_position/checkbox_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/purchase_detail_button.dart';

class EmployeeDetailContent extends StatefulWidget {
  final int id;
  const EmployeeDetailContent({required this.id, super.key});

  @override
  State<EmployeeDetailContent> createState() => _EmployeeDetailContentState();
}

class _EmployeeDetailContentState extends State<EmployeeDetailContent> {
  final _formKey = GlobalKey<FormState>();
  final _surnameController = TextEditingController();
  final _nameController = TextEditingController();
  final _fatherNameController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isPositionExpanded = true;
  String _selectedPositionText = 'Выберите должность';

  final List<Map> _statusList = [
    {'name': 'Швея', 'isChecked': false},
    {'name': 'Утюжник', 'isChecked': false},
    {'name': 'Закройщик', 'isChecked': false},
    {'name': 'Технолог', 'isChecked': false},
  ];

  @override
  void initState() {
    context.read<EmployeeBloc>().add(EmployeeEvent.getEmployeeDetails(id: widget.id));
    super.initState();
  }

  @override
  void dispose() {
    _surnameController.dispose();
    _nameController.dispose();
    _fatherNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Детали сотрудника',
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
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: BlocBuilder<EmployeeBloc, EmployeeState>(
              builder: (context, state) {
                var emploeey = state.employee;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _formKey,
                      child: _buildTextFieldsColumn(emploeey),
                    ),
                    // const SizedBox(height: 16),
                    // const Text(
                    //   'Должность*',
                    //   style: AppTextStyle.textField16,
                    // ),
                    // const SizedBox(height: 8),
                    // PurchaseDetailButton(
                    //   child: _buildRow(
                    //     title: _selectedPositionText,
                    //     isExpanded: _isPositionExpanded,
                    //     onPressed: () {
                    //       setState(() {
                    //         _isPositionExpanded = !_isPositionExpanded;
                    //       });
                    //     },
                    //   ),
                    // ),
                    // const SizedBox(height: 4),
                    // if (_isPositionExpanded)
                    //   Container(
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(8),
                    //     ),
                    //     child: Column(
                    //       children: _statusList.map(_buildCheckboxList).toList(),
                    //     ),
                    //   ),
                  ],
                );
              },
            ),
          ),
          _buildAlignButton(context),
        ],
      ),
    );
  }

  Align _buildAlignButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 32),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButtonWidget(
            text: 'Удалить сотрудника',
            color: AppColors.error,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return ExitAlert(
                    confirmButton: () {
                      AutoRouter.of(context).push(const OrganizationRoute());
                    },
                    cancelButton: () {
                      AutoRouter.of(context).maybePop();
                    },
                    title: 'Вы действительно хотите удалить сотрудника?',
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  CheckboxStyle _buildCheckboxList(Map list) {
    return CheckboxStyle(
      title: list['name'],
      value: list['isChecked'],
      onChanged: (bool? value) {
        _selectCheckbox(list, value);
      },
    );
  }

  void _selectCheckbox(Map list, bool? val) {
    setState(() {
      for (var status in _statusList) {
        status['isChecked'] = false;
      }
      list['isChecked'] = val;
      _updateSelectedPositionText();
    });
  }

  void _updateSelectedPositionText() {
    var selectedPosition = '';
    for (var status in _statusList) {
      if (status['isChecked'] == true) {
        selectedPosition = status['name'];
        break;
      }
    }
    _selectedPositionText = selectedPosition.isNotEmpty ? selectedPosition : 'Выберите должность';
  }

  Row _buildRow({
    required bool isExpanded,
    required Function() onPressed,
    String? title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style: AppTextStyle.textField16,
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

  Column _buildTextFieldsColumn(EmployeeDetailEntity employee) {
    return Column(
      children: [
        TextFormFieldWidget(
          enabled: false,
          controller: TextEditingController(text: employee.surname),
          titleName: 'Фамилия*',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          enabled: false,
          controller: TextEditingController(text: employee.name),
          titleName: 'Имя*',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          enabled: false,
          controller: TextEditingController(text: employee.patronymic),
          titleName: 'Отчество*',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          enabled: false,
          controller: TextEditingController(text: employee.email),
          titleName: 'Почта*',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          enabled: false,
          controller: TextEditingController(text: employee.positionName),
          titleName: 'Должность*',
        ),
      ],
    );
  }
}
