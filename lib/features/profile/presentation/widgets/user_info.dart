import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/order_place/presentation/widgets/action_sheet_widget.dart';
import 'package:neobis_smart_tailor/features/organization/pages/create_organization/presentation/create_organization_content.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:neobis_smart_tailor/gen/assets.gen.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({
    required this.ctx,
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
  final Function? onImageChanged;
  final BuildContext ctx;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey.shade300,
          backgroundImage: widget.profileEntity?.imagePath != null
              ? CachedNetworkImageProvider(widget.profileEntity!.imagePath!) as ImageProvider<Object>
              : CachedNetworkImageProvider(widget.profileEntity?.imagePath ?? '') as ImageProvider<Object>,
        ),
        const SizedBox(width: AppProps.kSmallMargin),
        GestureDetector(
          onTap: widget.enableImageSelection
              ? () {
                  _showPhotoOptions();
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

  void _showPhotoOptions() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => ActionSheetWidget(
        actions: ImagePickType.values
            .map(
              (type) => AppActionSheetWidget(
                onPressed: () {
                  Navigator.pop(context);
                  if (type == ImagePickType.selectPhoto) {
                    widget.ctx.read<ProfileBloc>().add(
                          const ProfileEvent.getImage(
                            ImageSource.gallery,
                          ),
                        );
                  } else if (type == ImagePickType.takePhoto) {
                    widget.ctx.read<ProfileBloc>().add(
                          const ProfileEvent.getImage(
                            ImageSource.camera,
                            imageQuality: 15,
                          ),
                        );
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
