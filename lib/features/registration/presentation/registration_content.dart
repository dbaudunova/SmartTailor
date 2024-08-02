import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class RegistrationContent extends StatefulWidget {
  const RegistrationContent({super.key});

  @override
  State<RegistrationContent> createState() => RegistrationContentState();
}

class RegistrationContentState extends State<RegistrationContent> {
  final surnameController = TextEditingController();
  final nameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _buttonEnabledNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _bloc.add(const RegistrationEvent.reset());
    surnameController.addListener(_updateButtonState);
    nameController.addListener(_updateButtonState);
    fatherNameController.addListener(_updateButtonState);
    emailController.addListener(_updateButtonState);
    phoneController.addListener(_updateButtonState);
  }

  String get email => emailController.text;

  RegistrationBloc get _bloc => context.read<RegistrationBloc>();

  void _updateButtonState() {
    _buttonEnabledNotifier.value = surnameController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        fatherNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        phoneController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBarStyle(title: t.registration),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin).copyWith(bottom: 96),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Form(
                    key: _formKey,
                    child: _buildFields(state),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          floatingActionButton: _buildButton(state),
        );
      },
    );
  }

  ValueListenableBuilder<bool> _buildButton(RegistrationState state) {
    return ValueListenableBuilder<bool>(
      valueListenable: _buttonEnabledNotifier,
      builder: (context, isButtonEnabled, _) {
        return state.stateStatus != const StateStatus.loading()
            ? ElevatedButtonWidget(
                text: t.register,
                onTap: isButtonEnabled
                    ? () {
                        if (_formKey.currentState!.validate()) {
                          _bloc.add(
                            RegistrationEvent.registration(
                              registrationModel: RegistrationModel(
                                name: nameController.text,
                                surname: surnameController.text,
                                email: emailController.text,
                                patronymic: fatherNameController.text,
                                phoneNumber: phoneController.text,
                              ),
                            ),
                          );
                        }
                      }
                    : null,
              )
            : ElevatedButtonWidget(text: t.register, onTap: null);
      },
    );
  }

  Column _buildFields(RegistrationState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormFieldWidget(
          titleName: t.surname,
          controller: surnameController,
          validator: (value) => _validateField(value, RegistrationFieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.name,
          controller: nameController,
          validator: (value) => _validateField(value, RegistrationFieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.FatherName,
          controller: fatherNameController,
          validator: (value) => _validateField(value, RegistrationFieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.email,
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          validator: (value) => _validateField(value, RegistrationFieldType.email),
          // onChanged: (val) {
          //   context.read<ConfirmationBloc>().add(
          //         ConfirmationEvent.addEmail(email: val),
          //       );
          // },
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          titleName: t.phoneNum,
          hintText: '+996',
          controller: phoneController,
          keyboardType: TextInputType.number,
          validator: (value) => _validateField(value, RegistrationFieldType.phone),
        ),
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

  @override
  void dispose() {
    surnameController.dispose();
    nameController.dispose();
    fatherNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    _buttonEnabledNotifier.dispose();
    super.dispose();
  }
}

enum RegistrationFieldType { text, phone, email }
