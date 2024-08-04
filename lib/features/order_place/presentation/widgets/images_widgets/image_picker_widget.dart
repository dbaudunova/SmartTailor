import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:permission_handler/permission_handler.dart';

enum _ImagePickType {
  selectPhoto('Выбрать фото'),
  takePhoto('Сделать фото');

  final String name;

  const _ImagePickType(this.name);
}

class ImagePickerWidget extends StatefulWidget {
  final TextEditingController controller;
  final Function(List<File> files) onSelectFiles;
  final List<File> images;

  const ImagePickerWidget({
    required this.onSelectFiles,
    required this.images,
    required this.controller,
    super.key,
  });

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      validator: (value) {
        if (widget.images.isEmpty) {
          return 'Выберите фотографии';
        }
        return null;
      },
      controller: widget.controller,
      enabled: false,
      ontap: _onTap,
      hintText: t.max5photos,
      titleName: t.addPhotos,
      suffixIcon: Icons.keyboard_arrow_down_sharp,
    );
  }

  void _onTap() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ActionSheetWidget(
        actions: _ImagePickType.values
            .map(
              (type) => AppActionSheetWidget(
                onPressed: () {
                  _onTypeHandler(type);
                  Navigator.pop(context);
                },
                text: type.name,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> _onTypeHandler(_ImagePickType type) async {
    bool permissionGranted;
    switch (type) {
      case _ImagePickType.selectPhoto:
        if (Platform.isAndroid) {
          permissionGranted = await _requestPermission(Permission.mediaLibrary);
        } else {
          permissionGranted = await _requestPermission(Permission.photos);
        }
        if (permissionGranted) {
          final files = await _pickMultipleImages();
          widget.onSelectFiles(files);
        }
        break;
      case _ImagePickType.takePhoto:
        permissionGranted = await _requestPermission(Permission.camera);
        if (permissionGranted) {
          final files = await _pickMultipleImagesFromCamera();
          widget.onSelectFiles(files);
        }
        break;
    }
  }

  Future<bool> _requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    } else {
      final result = await permission.request();
      return result.isGranted;
    }
  }

  Future<List<File>> _pickMultipleImages() async {
    final pickedFiles = await picker.pickMultiImage();
    final images = pickedFiles.take(5).map((file) => File(file.path)).toList();
    setState(() {
      widget.controller.text = 'Выбрано ${images.length} фото';
    });

    return images;
  }

  Future<List<File>> _pickMultipleImagesFromCamera() async {
    var newImages = <File>[];
    for (var i = 0; i < 5; i++) {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        newImages.add(File(pickedFile.path));
      } else {
        break;
      }
    }
    setState(() {
      widget.controller.text = 'Сделано ${newImages.length} фото';
    });

    return newImages;
  }
}
