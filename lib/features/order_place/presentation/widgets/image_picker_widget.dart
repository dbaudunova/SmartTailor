import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

enum _ImagePickType {
  selectPhoto('Выбрать фото'),
  takePhoto('Сделать фото');

  final String name;

  const _ImagePickType(this.name);
}

class ImagePickerWidget extends StatefulWidget {
  final Function(List<File> files) onSelectFiles;

  const ImagePickerWidget({required this.onSelectFiles, super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final _imageController = TextEditingController();

  @override
  void dispose() {
    _imageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      controller: _imageController,
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
    final files = await switch (type) {
      _ImagePickType.selectPhoto => _pickMultipleImages(),
      _ImagePickType.takePhoto => _pickMultipleImagesFromCamera(),
    };

    widget.onSelectFiles(files);
  }

  Future<List<File>> _pickMultipleImages() async {
    final picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage();
    final images = pickedFiles.take(5).map((file) => File(file.path)).toList();
    setState(() {
      _imageController.text = 'Выбрано ${images.length} фото';
    });

    return images;
  }

  Future<List<File>> _pickMultipleImagesFromCamera() async {
    final picker = ImagePicker();
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
      _imageController.text = 'Выбрано ${newImages.length} фото';
    });

    return newImages;
  }
}
