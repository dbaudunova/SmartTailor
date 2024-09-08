import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_content.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class ImagePickerWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function() onSelect;
  final Function() onCapture;
  final List<File> images;

  const ImagePickerWidget({
    required this.onSelect,
    required this.images,
    required this.controller,
    required this.onCapture,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWidget(
      validator: (value) {
        if (images.isEmpty) {
          return 'Выберите фотографии';
        }
        return null;
      },
      controller: controller,
      enabled: false,
      ontap: () => _onTap(
        context,
      ),
      hintText: t.max5photos,
      titleName: t.addPhotos,
      suffixIcon: Icons.keyboard_arrow_down_sharp,
    );
  }

  void _onTap(
    BuildContext context,
  ) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ActionSheetWidget(
        actions: ImagePickType.values
            .map(
              (type) => AppActionSheetWidget(
                onPressed: () {
                  if (type == ImagePickType.selectPhoto) {
                    onSelect();
                  } else if (type == ImagePickType.takePhoto) {
                    onCapture();
                  }
                  Navigator.pop(context);
                },
                text: type.name,
              ),
            )
            .toList(),
      ),
    );
  }
}
