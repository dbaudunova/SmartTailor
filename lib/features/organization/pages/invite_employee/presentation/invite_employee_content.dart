import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/data/models/send_invite_model.dart';
import 'package:neobis_smart_tailor/features/organization/pages/invite_employee/presentation/bloc/invite_employee_bloc.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/registration_content.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class InviteEmployeeContent extends StatefulWidget {
  const InviteEmployeeContent({super.key});

  @override
  State<InviteEmployeeContent> createState() => _InviteEmployeeContentState();
}

class _InviteEmployeeContentState extends State<InviteEmployeeContent> {
  final _emailController = TextEditingController();
  final _employeePositionController = TextEditingController();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _patronymicController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  InviteEmployeeBloc get _bloc => context.read<InviteEmployeeBloc>();

  @override
  void dispose() {
    _emailController.dispose();
    _employeePositionController.dispose();
    _nameController.dispose();
    _surnameController.dispose();
    _phoneController.dispose();
    _patronymicController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _bloc.add(const InviteEmployeeEvent.getAvailablePostion());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InviteEmployeeBloc, InviteEmployeeState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: _buildButton(state),
          appBar: AppBarStyle(
            title: 'Пригласить сотрудника',
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: _buildTextFields(state),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildButton(InviteEmployeeState state) {
    return state.stateStatus != const StateStatus.loading()
        ? ElevatedButtonWidget(
            text: 'Отправить приглашение',
            onTap: () {
              if (_formKey.currentState!.validate()) {
                var model = SendInviteModel(
                  surname: _surnameController.text,
                  name: _nameController.text,
                  patronymic: _patronymicController.text,
                  email: _emailController.text,
                  phoneNumber: _phoneController.text,
                  position: _employeePositionController.text,
                );
                context.read<InviteEmployeeBloc>().add(
                      InviteEmployeeEvent.sendInvite(
                        model: model,
                      ),
                    );
              }
            },
          )
        : const ElevatedButtonWidget(
            onTap: null,
            loading: true,
          );
  }

  String? _emailFieldValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Почта указана неверно';
    }
    return null;
  }

  String? _nullValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    return null;
  }

  Column _buildTextFields(InviteEmployeeState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormFieldWidget(
          titleName: 'Фамилия*',
          validator: (value) {
            return _nullValidation(value);
          },
          controller: _surnameController,
          hintText: 'Введите фамилию',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Имя*',
          validator: (value) {
            return _nullValidation(value);
          },
          controller: _nameController,
          hintText: 'Введите имя',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Отчество*',
          validator: (value) {
            return _nullValidation(value);
          },
          controller: _patronymicController,
          hintText: 'Введите отчество',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Почта*',
          keyboardType: TextInputType.emailAddress,
          validator: (value) => _emailFieldValidation(value),
          controller: _emailController,
          hintText: 'Введите электронную почту',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          titleName: t.phoneNum,
          hintText: '+996',
          controller: _phoneController,
          keyboardType: TextInputType.number,
          validator: (value) => _validateField(value, RegistrationFieldType.phone),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Должность*',
          validator: (value) {
            return _nullValidation(value);
          },
          onChanged: (s) {},
          controller: _employeePositionController,
          hintText: _employeePositionController.text,
        ),
        const SizedBox(height: 16),
        const Text(
          'Нажмите чтобы выбрать доступную долджность:',
          style: AppTextStyle.textField16,
        ),
        const SizedBox(height: 6),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.availablePositions.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _employeePositionController.text = state.availablePositions[index].positionName!;
                  });
                },
                child: Text(
                  state.availablePositions[index].positionName!,
                  style: AppTextStyle.textField16.copyWith(fontSize: 18),
                ),
              );
            }),
        const SizedBox(
          height: 68,
        )
      ],
    );
  }

  String? _validateField(String? value, RegistrationFieldType fieldType) {
    if (fieldType == RegistrationFieldType.text && value!.isEmpty) {
      return 'Поле не может быть пустым';
    }
    if (fieldType == RegistrationFieldType.email && !value!.contains('@')) {
      return 'Почта указана неверно';
    }
    if (fieldType == RegistrationFieldType.phone && value!.length < 16) {
      return 'Введинет номер телефона';
    }
    return null;
  }
}
