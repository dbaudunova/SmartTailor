import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screen/presentation/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';

@RoutePage()
class AnnouncementDetailScreen extends StatefulWidget {
  const AnnouncementDetailScreen({super.key});

  @override
  State<AnnouncementDetailScreen> createState() =>
      _AnnouncementDetailScreenState();
}

class _AnnouncementDetailScreenState extends State<AnnouncementDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle(
        title: 'Детали объявления',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const GalleryScreen(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 80, left: 16, right: 16, top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetailInfo(),
                        const SizedBox(height: 40),
                        Divider(
                          height: 1,
                          color: AppColors.black.withOpacity(0.36),
                        ),
                        const SizedBox(height: 16),
                        _buildAuthorInfo(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildTransparentButton(
                      backgroundColor: Colors.white,
                      strokeColor: AppColors.greyText,
                      onPressed: () {
                        AutoRouter.of(context)
                            .push(const MyAnnouncementsRoute());
                      },
                      text: 'Скрыть объявление',
                    ),
                    const SizedBox(height: 16),
                    _buildTransparentButton(
                      backgroundColor: AppColors.error,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return ExitAlert(
                                onYesButton: () {
                                  AutoRouter.of(context)
                                      .push(const MyAnnouncementsRoute());
                                },
                                onNoButton: () {
                                  AutoRouter.of(context).maybePop();
                                },
                                title: 'Удалить объявление?',
                              );
                            });
                      },
                      textColor: Colors.white,
                      text: 'Удалить',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransparentButton({
    required VoidCallback onPressed,
    required String text,
    required Color backgroundColor,
    Color? strokeColor,
    Color? textColor,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(color: strokeColor ?? Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            text,
            style: AppTextStyle.textField16.copyWith(
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Column _buildDetailInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Оборудование',
          style: AppTextStyle.textField16.copyWith(
            color: AppColors.listGreen,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Швейная машинка',
          style: AppTextStyle.textField16,
        ),
        const SizedBox(height: 12),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
          style: AppTextStyle.text14.copyWith(color: AppColors.greyText),
        ),
      ],
    );
  }

  Row _buildAuthorInfo() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.greyText,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Sandy Wilder Cheng',
              style: AppTextStyle.text14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Автор объявления',
              style: AppTextStyle.text14.copyWith(
                color: AppColors.greyText,
              ),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.phone,
            color: AppColors.listGreen,
          ),
        ),
      ],
    );
  }
}
