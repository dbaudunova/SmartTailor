import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/user_info.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class PersonalDataContent extends StatefulWidget {
  const PersonalDataContent({super.key});

  @override
  State<PersonalDataContent> createState() => _PersonalDataContentState();
}

class _PersonalDataContentState extends State<PersonalDataContent> {
  final _surnameController = TextEditingController();
  final _nameController = TextEditingController();
  final _fathersNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isInitialized = false;

  ProfileBloc get _bloc => context.read<ProfileBloc>();

  // @override
  // void initState() {
  //   _bloc.add(const ProfileEvent.getProfileInfo());
  //   super.initState();
  //   print('LOL');
  // }

  @override
  void dispose() {
    _surnameController.dispose();
    _nameController.dispose();
    _fathersNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
          child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              if (state.stateStatus == const StateStatus.success()) {
                _buildShowDialog(context);
              } else if (state.stateStatus == StateStatus.failure(message: '${state.stateStatus}')) {
                AppSnackBar.show(
                  context: context,
                  titleText: 'Не удалось загрузить данные',
                  error: true,
                );
              }
            },
            builder: (context, state) {
              if (state.stateStatus == const StateStatus.loading()) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.stateStatus == const StateStatus.success() && !_isInitialized) {
                _surnameController.text = state.profile?.surname ?? '';
                _nameController.text = state.profile?.name ?? '';
                _fathersNameController.text = state.profile?.patronymic ?? '';
                _emailController.text = state.profile?.email ?? '';
                _phoneNumberController.text = state.profile?.phoneNumber ?? '';
                _isInitialized = true;
              }

              return CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        UserInfo(
                          ctx: context,
                          profileEntity: state.profile,
                          secondRowText: 'Изменить фото профиля',
                          showBellIcon: false,
                          enableImageSelection: true,
                          onImageChanged: () {
                            _bloc.add(const ProfileEvent.uploadImage());
                          },
                        ),
                        const SizedBox(height: 16),
                        _buildPersonalDataRow(),
                        const SizedBox(height: 40),
                        Form(key: _formKey, child: _buildTextFields(state)),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButtonWidget(
                            text: 'Сохранить данные',
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                final profile = ProfileEntity(
                                  surname: _surnameController.text,
                                  name: _nameController.text,
                                  patronymic: _fathersNameController.text,
                                  phoneNumber: _phoneNumberController.text,
                                );
                                _bloc.add(ProfileEvent.editProfileInfo(profile));
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildTextFields(ProfileState state) {
    return Column(
      children: [
        TextFormFieldWidget(
          titleName: 'Фамилия*',
          validator: _nullValidation,
          controller: _surnameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Имя*',
          validator: _nullValidation,
          controller: _nameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Отчество*',
          validator: _nullValidation,
          controller: _fathersNameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          titleName: 'Почта*',
          enabled: false,
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          validator: _emailValidation,
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          validator: _nullValidation,
          titleName: 'Номер телефона*',
          keyboardType: TextInputType.phone,
          formatters: [MaskTextInputFormatter(mask: '+996 ### ### ###')],
          controller: _phoneNumberController,
        ),
      ],
    );
  }

  String? _nullValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустое';
    }
    return null;
  }

  String? _emailValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустое';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Почта указана неверно';
    }
    return null;
  }

  void _buildShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialogStyle(
          title: 'Сохранено!',
          content: 'Ваши данные сохранены!',
          buttonText: 'Закрыть',
          onButtonPressed: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  Row _buildPersonalDataRow() {
    return Row(
      children: [
        Text(
          'Личные данные',
          style: AppTextStyle.title24.copyWith(
            fontSize: 20,
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 16),
          child: SvgPicture.asset(
            Assets.icons.edit,
          ),
        ),
      ],
    );
  }
}
