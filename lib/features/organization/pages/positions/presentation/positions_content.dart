import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/shared/app_constants.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/data/models/_model/position_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/bloc/positions_bloc.dart';

class PositionsContent extends StatefulWidget {
  const PositionsContent({super.key});

  @override
  State<PositionsContent> createState() => _PositionsContentState();
}

class _PositionsContentState extends State<PositionsContent> {
  final _employeePositionController = TextEditingController();
  final _weightController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Map<String, bool> selectedActions = {};

  @override
  void dispose() {
    _employeePositionController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Constants.actionsMap.forEach((key, value) {
      selectedActions[key] = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: _buildAddPositionButton(),
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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormFieldWidget(
                  controller: _employeePositionController,
                  titleName: 'Должности',
                  hintText: 'Введите название должности',
                  validator: _nullValidation,
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  controller: _weightController,
                  formatters: [FilteringTextInputFormatter.digitsOnly],
                  titleName: 'Вес',
                  hintText: 'Введите цифпу от 1 до 5',
                  validator: (value) {
                    if (int.tryParse(value!) == null || int.parse(value) > 5 || int.parse(value) < 1) {
                      return 'Введите цифру от 1 до 5';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: _buildCheckBoxContainer(),
                ),
                const SizedBox(height: AppProps.kPageMarginX5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButtonWidget _buildAddPositionButton() {
    return ElevatedButtonWidget(
      text: 'Добавить должность',
      onTap: () {
        if (_formKey.currentState!.validate()) {
          var selectedKeys = selectedActions.entries.where((entry) => entry.value).map((entry) => entry.key).toList();
          var entity = PositionEntity(
            weight: _weightController.text,
            positionName: _employeePositionController.text,
            accessRights: selectedKeys,
          );
          context.read<PositionsBloc>().add(
                PositionsEvent.createPosition(entity: entity),
              );
        }
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
          ...Constants.actionsMap.entries.map((entry) {
            return CheckboxListTile(
              checkboxShape: const CircleBorder(),
              title: Text(entry.value),
              value: selectedActions[entry.key],
              onChanged: (bool? value) {
                setState(() {
                  selectedActions[entry.key] = value ?? false;
                });
              },
            );
          }),
          // Column(
          //   children: actionsMap.map((list) {
          //     return _buildCheckboxList(list);
          //   }).toList(),
          // ),
        ],
      ),
    );
  }

  // CheckboxStyle _buildCheckboxList(Map list) {
  //   return CheckboxStyle(
  //     title: list['name'],
  //     value: list['isChecked'],
  //     onChanged: (bool? value) {
  //       _selectCheckbox(list, value);
  //     },
  //   );
  // }

  // void _selectCheckbox(Map list, bool? val) {
  //   setState(() {
  //     list['isChecked'] = val;
  //   });
  // }

  String? _nullValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    return null;
  }
}
