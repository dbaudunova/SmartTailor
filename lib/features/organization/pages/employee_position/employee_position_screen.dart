import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/employee_position/checkbox_style.dart';

@RoutePage()
class EmployeePositionScreen extends StatefulWidget {
  const EmployeePositionScreen({super.key});

  @override
  State<EmployeePositionScreen> createState() => _EmployeePositionScreenState();
}

class _EmployeePositionScreenState extends State<EmployeePositionScreen> {
  final _employeePositionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final List<Map> _statusList = [
    {'name': 'Создание заказа', 'isChecked': false},
    {'name': 'Создание и выдача Должности', 'isChecked': false},
    {'name': 'Изменение прав доступа у Должностей', 'isChecked': false},
    {'name': 'Изменение статуса заказа', 'isChecked': false},
    {'name': 'Добавление работника', 'isChecked': false},
    {'name': 'Удаление заказа', 'isChecked': false},
    {'name': 'Удаление работника', 'isChecked': false},
    {'name': 'Удаление должности', 'isChecked': false},
  ];

  @override
  void dispose() {
    _employeePositionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarStyle(
        title: 'Должности',
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
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 24),
        child: Stack(
          children: [
            Column(
              children: [
                Form(
                  key: _formKey,
                  child: TextFormFieldWidget(
                    controller: _employeePositionController,
                    titleName: 'Должности',
                    validator: _nullValidation,
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: _buildCheckBoxContainer(),
                )
              ],
            ),
            Positioned(
              bottom: 32,
              left: 0,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButtonWidget(
                  text: 'Добавить должность',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _showCustomDialog(
                        context: context,
                        contentText:
                            'Созданные должности будут находиться ниже по Иерархии, и им нельзя выдать права доступа, которые недоступны человеку создающему новую роль',
                        buttonText: 'Понятно',
                        onButtonPressed: () {
                          _showCustomDialog(
                            context: context,
                            contentText: 'Выдача прав доступа сохранена!',
                            buttonText: 'Понятно',
                            onButtonPressed: () {
                              AutoRouter.of(context).push(const OrganizationRoute());
                            },
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCustomDialog({
    required BuildContext context,
    required String contentText,
    required String buttonText,
    required VoidCallback onButtonPressed,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Text(
            contentText,
            style: AppTextStyle.text14.copyWith(fontWeight: FontWeight.w600),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                onButtonPressed();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  buttonText,
                  style: AppTextStyle.textField16.copyWith(
                    color: AppColors.modalBlue,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Container _buildCheckBoxContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 24),
            child: Text(
              'Выдача прав доступа',
              style: AppTextStyle.textField16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Column(
            children: _statusList.map((list) {
              return _buildCheckboxList(list);
            }).toList(),
          ),
        ],
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
      list['isChecked'] = val;
    });
  }

  String? _nullValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    return null;
  }
}
