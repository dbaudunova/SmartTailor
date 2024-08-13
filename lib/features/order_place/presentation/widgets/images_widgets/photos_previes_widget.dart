import 'dart:io';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class PhotosPreviewWidget extends StatelessWidget {
  final Function(File file) onDeleteImage;
  final List<File> images;
  const PhotosPreviewWidget({
    required this.images,
    required this.onDeleteImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return images != []
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          _buildPhoto(images, index),
                          _buildCross(context, images, index),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                  const SizedBox(height: AppProps.kPageMargin),
                ],
              );
            }),
          )
        : Container();
  }

  Positioned _buildCross(BuildContext context, List<File> photos, int index) {
    return Positioned(
        right: 4,
        top: 4,
        child: GestureDetector(
          onTap: () {
            onDeleteImage(photos[index]);
          },
          child: const Icon(
            Icons.highlight_remove,
            color: AppColors.white,
            size: 20,
          ),
        ));
  }

  Container _buildPhoto(List<File> photos, int index) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColors.fieldBorder,
        ),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: FileImage(
            File(photos[index].path),
          ),
        ),
      ),
    );
  }
}
