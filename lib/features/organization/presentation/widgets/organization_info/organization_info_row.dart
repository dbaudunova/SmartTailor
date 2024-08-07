import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';

class OrganizationInfoRow extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final String date;
  const OrganizationInfoRow({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.date,
    this.isDateContainerVisible = true,
    super.key,
  });

  final bool isDateContainerVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildImage(),
          const SizedBox(width: 16),
          _buildText(),
        ],
      ),
    );
  }

  Column _buildText() {
    var dateTime = DateTime.parse(date);
    var formattedDate = DateFormat('dd MMMM yyyy').format(dateTime);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: AppTextStyle.s20w400Orange.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: AppTextStyle.s12w400.copyWith(
            color: AppColors.greyText,
          ),
        ),
        const SizedBox(height: 8),
        if (isDateContainerVisible)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.buttonUnavailableBack,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              formattedDate,
              style: AppTextStyle.s12w400,
            ),
          ),
      ],
    );
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 92,
        height: 92,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
            child: CircularProgressIndicator(value: downloadProgress.progress),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
