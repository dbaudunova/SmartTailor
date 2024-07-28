import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';

@RoutePage()
class CreateOrganizationScreen extends StatefulWidget {
  const CreateOrganizationScreen({super.key});

  @override
  State<CreateOrganizationScreen> createState() =>
      _CreateOrganizationScreenState();
}

class _CreateOrganizationScreenState extends State<CreateOrganizationScreen> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _logoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  File? _imageFile;

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _logoController.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
        _logoController.text = 'Фото выбрано';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarStyle(
        title: 'Организация',
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: _formKey,
              child: _buildTextFields(),
            ),
            const SizedBox(height: 16),
            _buildImagePreview(),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButtonWidget(
                text: 'Создать организацию',
                onTap: () {
                  _alertValidate(context);
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _alertValidate(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialogStyle(
            title: 'Ура!',
            content: 'Вы создали организацию!',
            buttonText: 'Понятно',
            onButtonPressed: () {
              AutoRouter.of(context)
                  .replaceNamed('/organization_info');
            },
          );
        },
      );
    }
  }

  Widget _buildImagePreview() {
    if (_imageFile == null) {
      return const SizedBox.shrink();
    }
    return Center(
      child: Stack(
        children: [
          SizedBox(
            width: 92,
            height: 92,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                _imageFile!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 92,
            height: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.greyText,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? _fieldValidation(String? value) {
    if (value!.isEmpty) {
      return 'Поле не может быть пустым';
    } else if (value.length < 5 || value.length > 50) {
      return 'Максимум 50 символов, минимум 5';
    }
    return null;
  }

  void _showPhotoOptions(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ActionSheetWidget(
        actions: ImagePickType.values
            .map(
              (type) => AppActionSheetWidget(
            onPressed: () {
              Navigator.pop(context);
              if (type == ImagePickType.selectPhoto) {
                _pickImage(ImageSource.gallery);
              } else if (type == ImagePickType.takePhoto) {
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
          controller: _nameController,
          validator: _fieldValidation,
          titleName: 'Название*',
          hintText: 'Максимум 50 символов, минимум 5',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          controller: _descriptionController,
          validator: _fieldValidation,
          titleName: 'Описание*',
          hintText: 'Максимум 50 символов, минимум 5',
        ),
        const SizedBox(height: 16),
        TextFormFieldWidget(
          enabled: false,
          ontap: () {
            _showPhotoOptions(context);
          },
          titleName: 'Ваш логотип*',
          hintText: 'Загрузить фото',
          controller: _logoController,
        ),
      ],
    );
  }
}

enum ImagePickType {
  selectPhoto('Выбрать фото'),
  takePhoto('Сделать фото');

  final String name;

  const ImagePickType(this.name);
}
