import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_content.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({
    this.onIconPressed,
    this.showBellIcon = true,
    super.key,
    this.secondRowText,
    this.onTap,
    this.profileEntity,
    this.enableImageSelection = false,
    this.onImageChanged,
  });

  final String? secondRowText;
  final VoidCallback? onIconPressed, onTap;
  final bool showBellIcon;
  final ProfileEntity? profileEntity;
  final bool enableImageSelection;
  final ValueChanged<File?>? onImageChanged;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.yellow,
          backgroundImage: _imageFile != null
              ? FileImage(_imageFile!)
              : CachedNetworkImageProvider(widget.profileEntity?.imagePath ?? '') as ImageProvider<Object>,
        ),
        const SizedBox(width: AppProps.kSmallMargin),
        GestureDetector(
          onTap: widget.enableImageSelection
              ? () {
                  _showPhotoOptions(context);
                }
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.profileEntity?.name} ${widget.profileEntity?.surname}',
                style: AppTextStyle.title24.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.secondRowText ?? '',
                style: AppTextStyle.title24.copyWith(
                  fontSize: AppProps.kMediumMargin,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        if (widget.showBellIcon)
          IconButton(
            onPressed: widget.onIconPressed,
            icon: SvgPicture.asset(
              Assets.icons.bell,
            ),
          ),
      ],
    );
  }

  Future<void> _pickImage(ImageSource source, {int? imageQuality}) async {
    final pickedFile = await ImagePicker().pickImage(source: source, imageQuality: imageQuality);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
      widget.onImageChanged?.call(_imageFile);
    }
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
                    _pickImage(ImageSource.camera, imageQuality: 15);
                  }
                },
                text: type.name,
              ),
            )
            .toList(),
      ),
    );
  }
}
