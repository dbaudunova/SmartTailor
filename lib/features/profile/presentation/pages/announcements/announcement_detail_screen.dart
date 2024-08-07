import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/author_info.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/customer_container.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/purchase_detail_button.dart';

@RoutePage()
class AnnouncementDetailScreen extends StatefulWidget {
  const AnnouncementDetailScreen({super.key});

  @override
  State<AnnouncementDetailScreen> createState() =>
      _AnnouncementDetailScreenState();
}

class _AnnouncementDetailScreenState extends State<AnnouncementDetailScreen> {
  bool _isCustomerExpanded = false;
  bool _isResponseExpanded = false;

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
              const GalleryWidget(),
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
                        const AuthorInfo(),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: PurchaseDetailButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: _buildRow(
                              title: 'Список покупателей',
                              isExpanded: _isCustomerExpanded,
                              onPressed: () {
                                setState(() {
                                  _isCustomerExpanded = !_isCustomerExpanded;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (_isCustomerExpanded) _buildCustomerContainer(),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: PurchaseDetailButton(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: _buildRow(
                              title: 'Отклики',
                              isExpanded: _isResponseExpanded,
                              onPressed: () {
                                setState(() {
                                  _isResponseExpanded = !_isResponseExpanded;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (_isResponseExpanded) _buildCustomerContainer(),
                        const SizedBox(height: 64),
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
                                confirmButton: () {
                                  AutoRouter.of(context)
                                      .push(const MyAnnouncementsRoute());
                                },
                                cancelButton: () {
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

  Container _buildCustomerContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomerContainer(),
          );
        },
      ),
    );
  }

  Row _buildRow({
    required String title,
    required bool isExpanded,
    required Function() onPressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.textField16.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            isExpanded
                ? Icons.keyboard_arrow_up_rounded
                : Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
        ),
      ],
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
}
