import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final surnameController = TextEditingController();
  final nameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    surnameController.dispose();
    nameController.dispose();
    fatherNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 40
                  //  + statusBarHeight
                  ),
              Form(key: _formKey, child: _buildFields()),
              const SizedBox(height: 16),
              _buildCheckBox(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildButton(context),
    );
  }

  BlocBuilder<RegistrationBloc, RegistrationState> _buildButton(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        print(state.registrationModel.isButtonAvailable);
        return state.registrationModel.isButtonAvailable
            ? ElevatedButtonWidget(
                text: t.register,
                onTap: () {
                  print(state.registrationModel);
                  if (_formKey.currentState!.validate()) {
                    context.read<RegistrationBloc>().add(
                          RegistrationEvent.registration(registrationModel: state.registrationModel),
                        );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Processing Data')),
                    );
                    AutoRouter.of(context).replaceNamed('/confirmation');
                  }
                },
              )
            : ElevatedButtonWidget(
                text: t.register,
              );
      },
    );
  }

  Row _buildCheckBox() {
    return Row(
      children: [
        SizedBox(
          height: 24.0,
          width: 24.0,
          child: Checkbox(
            value: true,
            onChanged: (s) {},
            activeColor: AppColors.darkBlue,
          ),
        ),
        const SizedBox(width: 11),
        Text(
          t.rememberMe,
          style: AppTextStyle.textField16.copyWith(fontSize: 16),
        ),
      ],
    );
  }

  Column _buildFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   t.registration,
        //   style: AppTextStyle.title24,
        // ),
        // const SizedBox(height: 32),
        TextFormFieldWidget(
          titleName: t.surname,
          onChanged: (value) {
            context.read<RegistrationBloc>().add(
                  RegistrationEvent.addSurname(surname: value),
                );
          },
          controller: surnameController,
          validator: (value) => _validateField(value, RegistrationFieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.name,
          onChanged: (value) {
            context.read<RegistrationBloc>().add(
                  RegistrationEvent.addName(name: value),
                );
          },
          controller: nameController,
          validator: (value) => _validateField(value, RegistrationFieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.FatherName,
          onChanged: (value) {
            context.read<RegistrationBloc>().add(
                  RegistrationEvent.addFatherName(fatherName: value),
                );
          },
          controller: fatherNameController,
          validator: (value) => _validateField(value, RegistrationFieldType.text),
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: t.email,
          validator: (value) => _validateField(value, RegistrationFieldType.email),
          onChanged: (value) {
            context.read<RegistrationBloc>().add(
                  RegistrationEvent.addEmail(email: value),
                );
          },
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          titleName: t.phoneNum,
          validator: (value) => _validateField(value, RegistrationFieldType.phone),
          onChanged: (value) {
            context.read<RegistrationBloc>().add(
                  RegistrationEvent.addPhone(phone: value),
                );
            print(value.length);
          },
          controller: phoneController,
          keyboardType: TextInputType.phone,
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
}

enum RegistrationFieldType { text, phone, email }
