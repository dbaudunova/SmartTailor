import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/bloc/order_place_bloc.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:image_picker/image_picker.dart';

class ShowActionSheetButton extends StatefulWidget {
  String? announcementType;
  final SheetType actionType;
  final String title;
  final String hintText;

  ShowActionSheetButton({
    super.key,
    required this.title,
    required this.hintText,
    required this.actionType,
    this.announcementType,
  });

  @override
  State<ShowActionSheetButton> createState() => _ShowActionSheetButtonState();
}

List<File> _images = [];

class _ShowActionSheetButtonState extends State<ShowActionSheetButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTextStyle.textField16,
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: () {
            _handleAction(widget.actionType, context);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 12, left: 12, top: 15),
            height: 46,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.fieldBorder),
              borderRadius: BorderRadius.circular(6),
              color: AppColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<OrderPlaceBloc, OrderPlaceState>(
                  builder: (context, state) {
                    return Text(
                      state.orderPlaceModel.type != '' ? state.orderPlaceModel.type : widget.hintText,
                      // widget.announcementType != null ? widget.announcementType! : widget.hintText,
                      style: widget.announcementType != null
                          ? AppTextStyle.textField16
                          : AppTextStyle.textField16.copyWith(color: AppColors.greyText),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: SvgPicture.asset(Assets.icons.drillIn),
                )
              ],
            ),
          ),
        ),
        if (_images.isNotEmpty)
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: _images.map((image) {
              return Image.file(image, width: 100, height: 100, fit: BoxFit.cover);
            }).toList(),
          ),
      ],
    );
  }

  void _handleAction(SheetType actionType, BuildContext ctx) {
    switch (actionType) {
      case SheetType.showActionSheetPhotos:
        _showActionSheet(ctx, SheetType.showActionSheetPhotos);
        // _pickImage();
        break;
      case SheetType.showActionSheetType:
        _showActionSheet(ctx, SheetType.showActionSheetType);
        break;
      case SheetType.callBottomSheet:
        _callBottomSheet();
        break;
    }
  }

  void _callBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return _SizeSelectionBottomSheet();
      },
    );
  }

  void _showActionSheet(BuildContext context, SheetType type) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: type == SheetType.showActionSheetType
            ? [
                _actionSheet(t.order, () {
                  context.read<OrderPlaceBloc>().add(
                        OrderPlaceEvent.showFields(type: t.order),
                      );
                  Navigator.pop(context);
                }),
                _actionSheet(t.equipment, () {
                  setState(() {
                    context.read<OrderPlaceBloc>().add(
                          OrderPlaceEvent.showFields(type: t.equipment),
                        );
                  });
                  Navigator.pop(context);
                }),
              ]
            : [
                _actionSheet('Выбрать фотографии', () {
                  _pickMultipleImages();
                  Navigator.pop(context);
                }),
                _actionSheet('Сделать фотографии', () {
                  _pickMultipleImagesFromCamera();
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

  Future<void> _pickMultipleImages() async {
    final ImagePicker picker = ImagePicker();
    final pickedFiles = await picker.pickMultiImage();

    if (pickedFiles != null) {
      setState(() {
        _images = pickedFiles.take(5).map((file) => File(file.path)).toList();
        print(_images.length);
      });
    }
  }

  Future<void> _pickMultipleImagesFromCamera() async {
    final ImagePicker picker = ImagePicker();
    List<File> newImages = [];

    for (int i = 0; i < 5; i++) {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        newImages.add(File(pickedFile.path));
      } else {
        break; // если пользователь отменил съемку, выйти из цикла
      }
    }

    if (newImages.isNotEmpty) {
      setState(() {
        _images = newImages;
      });
    }
  }
}

class _SizeSelectionBottomSheet extends StatefulWidget {
  @override
  _SizeSelectionBottomSheetState createState() => _SizeSelectionBottomSheetState();
}

class _SizeSelectionBottomSheetState extends State<_SizeSelectionBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _sizes = ['S', 'M', 'L', 'XL'];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            t.inputSize,
            style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black),
          ),
          TextField(
            controller: _controller,
          ),
          SizedBox(height: 16.0),
          Wrap(
            spacing: 16.0,
            children: _sizes.map((size) {
              return Chip(
                deleteIcon: SvgPicture.asset(Assets.icons.cross),
                label: Text(size),
                onDeleted: () {
                  setState(() {
                    _sizes.remove(size);
                  });
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

enum SheetType { showActionSheetPhotos, showActionSheetType, callBottomSheet }
