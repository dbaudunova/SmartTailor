import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/show_action_sheet_button.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class ActionSheetWidget extends StatelessWidget {
  final SheetType type;
  final OrderPlaceBloc bloc;

  const ActionSheetWidget({
    super.key,
    required this.type,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      actions: type == SheetType.type
          ? [
              _actionSheet(t.order, () {
                bloc.add(OrderPlaceEvent.showFields(fieldType: t.order));
                Navigator.pop(context);
              }),
              _actionSheet(t.equipment, () {
                bloc.add(OrderPlaceEvent.showFields(fieldType: t.equipment));
                Navigator.pop(context);
              }),
            ]
          : [
              _actionSheet('Выбрать фотографии', () {
                _pickMultipleImages().then((images) {});
                Navigator.pop(context);
              }),
              _actionSheet('Сделать фотографии', () {
                _pickMultipleImagesFromCamera().then((images) {});
                Navigator.pop(context);
              }),
            ],
      cancelButton: CupertinoActionSheetAction(
        child: Text(
          t.cancel,
          style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w500),
        ),
        onPressed: () {
          Navigator.pop(context, 'Cancel');
        },
      ),
    );
  }

  CupertinoActionSheetAction _actionSheet(String text, Function() onPressed) {
    return CupertinoActionSheetAction(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w500),
      ),
    );
  }

  Future<List<File>> _pickMultipleImages() async {
    final ImagePicker picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage();
    final images = pickedFiles.take(5).map((file) => File(file.path)).toList();
    bloc.add(OrderPlaceEvent.addPhotos(photos: images));

    return images;
  }

  Future<List<File>> _pickMultipleImagesFromCamera() async {
    final ImagePicker picker = ImagePicker();
    List<File> newImages = [];

    for (int i = 0; i < 5; i++) {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        newImages.add(File(pickedFile.path));
      } else {
        break;
      }
    }
    bloc.add(OrderPlaceEvent.addPhotos(photos: newImages));

    return newImages;
  }
}
