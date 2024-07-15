import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/user_info.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

enum _ImagePickType {
  selectPhoto('Выбрать фото'),
  takePhoto('Сделать фото');

  final String name;

  const _ImagePickType(this.name);
}

@RoutePage()
class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  final _surnameController = TextEditingController();
  final _nameController = TextEditingController();
  final _fathersNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  File? _imageFile;

  @override
  void dispose() {
    _surnameController.dispose();
    _nameController.dispose();
    _fathersNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
          child: Column(
            children: [
              _buildUserInfo(context),
              const SizedBox(height: 16),
              _buildPersonalDataRow(),
              const SizedBox(height: 40),
              Form(key: _formKey, child: _buildTextFields()),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButtonWidget(
                  text: 'Сохранить данные',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _buildShowDialog(context);
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  UserInfo _buildUserInfo(BuildContext context) {
    return UserInfo(
      onTap: () {
        _showPhotoOptions(context);
      },
      showBellIcon: false,
      secondRowText: 'Изменить фото профиля',
      avatar: _imageFile == null
          ? CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.yellow,
              child: SvgPicture.asset(
                Assets.icons.person,
                width: AppProps.kBigMargin,
                height: AppProps.kBigMargin,
              ),
            )
          : CircleAvatar(
              backgroundImage: FileImage(_imageFile!),
              radius: 24,
            ),
    );
  }

  void _showPhotoOptions(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ActionSheetWidget(
        actions: _ImagePickType.values
            .map(
              (type) => AppActionSheetWidget(
                onPressed: () {
                  Navigator.pop(context);
                  if (type == _ImagePickType.selectPhoto) {
                    _pickImage(ImageSource.gallery);
                  } else if (type == _ImagePickType.takePhoto) {
                    _pickImage(ImageSource.camera);
                  }
                },
                text: type.name,
              ),
            )
            .toList(),
      ),
    );
  }

  Column _buildTextFields() {
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
            AutoRouter.of(context).push(const ProfileRoute());
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
