import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/shared/app_constants.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/organization/domain/entitys/position_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/bloc/positions_bloc.dart';

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

  PositionsBloc get _bloc => context.read<PositionsBloc>();

  @override
  void dispose() {
    _employeePositionController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _bloc
      ..add(const PositionsEvent.getAvailableWeights())
      ..add(const PositionsEvent.getAvailableAccessRights());
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
            child: BlocBuilder<PositionsBloc, PositionsState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormFieldWidget(
                      controller: _employeePositionController,
                      titleName: 'Должности',
                      hintText: 'Введите название должности',
                      validator: _nullValidation,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Выберите доступный вес',
                      style: AppTextStyle.textField16.copyWith(color: AppColors.black.withOpacity(0.60)),
                    ),
                    const SizedBox(height: 8),
                    _buildWeightSelection(state.weights),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: _buildCheckBoxContainer(state.rights),
                    ),
                    const SizedBox(height: AppProps.kPageMarginX5),
                  ],
                );
              },
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

  SizedBox _buildWeightSelection(List<int> weights) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weights.length,
        itemBuilder: (context, index) {
          final weight = weights[index];
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                shape: const CircleBorder(),
                value: _weightController.text == weight.toString(),
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      _weightController.text = weight.toString();
                    } else {
                      _weightController.clear();
                    }
                  });
                },
              ),
              Text(weight.toString()),
              const SizedBox(width: 8),
            ],
          );
        },
      ),
    );
  }

  Container _buildCheckBoxContainer(List<String> rights) {
    final filteredActionsMap = Map.fromEntries(
      Constants.actionsMap.entries.where((entry) => rights.contains(entry.key)),
    );
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
          ...filteredActionsMap.entries.map((entry) {
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
        ],
      ),
    );
  }

  String? _nullValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    return null;
  }
}
