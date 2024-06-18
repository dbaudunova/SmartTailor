import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:image_picker/image_picker.dart';

class ShowActionSheetButton extends StatefulWidget {
  final SheetType actionType;
  final String title;
  final String hintText;

  const ShowActionSheetButton({
    super.key,
    required this.title,
    required this.hintText,
    required this.actionType,
  });

  @override
  State<ShowActionSheetButton> createState() => _ShowActionSheetButtonState();
}

File? _image;

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
            _handleAction(widget.actionType);
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
                Text(
                  widget.hintText,
                  style: AppTextStyle.textField16.copyWith(fontSize: 16, color: AppColors.greyText),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: SvgPicture.asset(Assets.icons.drillIn),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _handleAction(SheetType actionType) {
    switch (actionType) {
      case SheetType.pickImage:
        _pickImage();
        break;
      case SheetType.showActionSheet:
        _showActionSheet(context);
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

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: Text(
              t.order,
              style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              // Navigator.pop(context, 'Action 1');
            },
          ),
          CupertinoActionSheetAction(
            child: Text(
              t.equipment,
              style: AppTextStyle.s20w400Orange.copyWith(color: AppColors.black, fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              // Navigator.pop(context, 'Action 2');
            },
          ),
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

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
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

enum SheetType { pickImage, showActionSheet, callBottomSheet }
