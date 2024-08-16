import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/author_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_type.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/customer_container.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/size_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/purchases/purchase_detail_button.dart';

@RoutePage()
class AnnouncementDetailScreen extends StatefulWidget {
  final int id;
  final AnnouncementType type;

  const AnnouncementDetailScreen({
    required this.id,
    required this.type,
    super.key,
  });

  @override
  State<AnnouncementDetailScreen> createState() =>
      _AnnouncementDetailScreenState();
}

class _AnnouncementDetailScreenState extends State<AnnouncementDetailScreen> {
  bool _isCustomerExpanded = false;
  bool _isResponseExpanded = false;
  late Map<String, dynamic> detailedData;

  @override
  void initState() {
    super.initState();
    switch (widget.type) {
      case AnnouncementType.order:
        context
            .read<AnnouncementBloc>()
            .add(AnnouncementEvent.getOrderDetailed(id: widget.id));
      case AnnouncementType.equipment:
        context
            .read<AnnouncementBloc>()
            .add(AnnouncementEvent.getEquipmentDetailed(id: widget.id));
      case AnnouncementType.service:
        context
            .read<AnnouncementBloc>()
            .add(AnnouncementEvent.getServiceDetailed(id: widget.id));
    }
  }

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
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Stack(
        children: [
          BlocBuilder<AnnouncementBloc, AnnouncementState>(
            builder: (context, state) {
              detailedData = _getDetailedData(state);
              if (state.stateStatus == const StateStatus.loading()) {
                return const Center(child: CircularProgressIndicator());
              }
              return detailedData.isNotEmpty
                  ? Column(
                children: [
                  GalleryWidget(
                    images: detailedData['images'] ?? [],
                    date: detailedData['date'],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              detailedData['title'] ?? 'Нет данных',
                              style: AppTextStyle.textField16,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              detailedData['description'] ??
                                  'Нет описания',
                              style: AppTextStyle.text14
                                  .copyWith(color: AppColors.greyText),
                            ),
                            const SizedBox(height: 40),
                            AuthorInfoWidget(
                              authorImage:
                              detailedData['authorImage'] ?? '',
                              authorName:
                              detailedData['authorFullName'] ?? '',
                            ),
                            const SizedBox(height: 24),
                            if (widget.type == AnnouncementType.order)
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: PurchaseDetailButton(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  child: _buildExpandableButton(
                                    title: 'Размеры',
                                    isExpanded: _isCustomerExpanded,
                                    onPressed: () {
                                      setState(() {
                                        _isCustomerExpanded =
                                        !_isCustomerExpanded;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            const SizedBox(height: 4),
                            if (_isCustomerExpanded && widget.type == AnnouncementType.order)
                              _buildSizeContainer(),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: PurchaseDetailButton(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                child: _buildExpandableButton(
                                  title: widget.type == AnnouncementType.equipment
                                      ? 'Покупатели'
                                      : 'Отклики',
                                  isExpanded: _isResponseExpanded,
                                  onPressed: () {
                                    setState(() {
                                      _isResponseExpanded =
                                      !_isResponseExpanded;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            if (_isResponseExpanded)
                              _buildCustomerContainer(),
                            const SizedBox(height: 130),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
                  : const Center(child: CircularProgressIndicator());
            },
          ),
          _buildBottomButtons(context),
        ],
      ),
    );
  }


  Map<String, dynamic> _getDetailedData(AnnouncementState state) {
    switch (widget.type) {
      case AnnouncementType.order:
        return {
          'title': state.detailedOrder?.name,
          'description': state.detailedOrder?.description,
          'images': state.detailedOrder?.orderImages,
          'date': state.detailedOrder?.dateOfExecution,
          'authorImage': state.detailedOrder?.authorImage,
          'authorFullName': state.detailedOrder?.authorFullName,
          'orderItems': state.detailedOrder?.orderItems,
          'orderCandidates': state.detailedOrder?.orderCandidates
        };
      case AnnouncementType.equipment:
        return {
          'title': state.detailedEquipment?.name,
          'description': state.detailedEquipment?.description,
          'images': state.detailedEquipment?.equipmentImages,
          'authorImage': state.detailedEquipment?.authorImage,
          'authorFullName': state.detailedEquipment?.authorFullName,
          'equipmentBuyers': state.detailedEquipment?.equipmentBuyers,
        };
      case AnnouncementType.service:
        return {
          'title': state.detailedService?.name,
          'description': state.detailedService?.description,
          'images': state.detailedService?.serviceImages,
          'authorImage': state.detailedService?.authorImage,
          'authorFullName': state.detailedService?.authorFullName,
          'serviceApplicants': state.detailedService?.serviceApplicants
        };
    }
  }

  Container _buildCustomerContainer() {
    var orderCandidates = <dynamic>[];

    switch (widget.type) {
      case AnnouncementType.order:
        orderCandidates = detailedData['orderCandidates'] ?? [];
      case AnnouncementType.equipment:
        orderCandidates = detailedData['equipmentBuyers'] ?? [];
      case AnnouncementType.service:
        orderCandidates = detailedData['serviceApplicants'] ?? [];
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: orderCandidates.length,
        itemBuilder: (context, index) {
          final item = orderCandidates[index];

          if (widget.type == AnnouncementType.order) {
            final orderCandidate = item as OrderCandidates;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomerContainer(
                name: orderCandidate.name ?? '',
                description: orderCandidate.description ?? '',
              ),
            );
          } else {
            final equipmentBuyer = item as EquipmentBuyers;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomerContainer(
                name: equipmentBuyer.fullName ?? '',
                description: equipmentBuyer.email ?? '',
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildExpandableButton({
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

  Widget _buildSizeContainer() {
    var orderItems = detailedData['orderItems'] ?? [];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: orderItems.length,
        itemBuilder: (context, index) {
          final item = orderItems[index];
          return SizeWidget(item: item);
        },
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Positioned(
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
                  AutoRouter.of(context).push(const MyAnnouncementsRoute());
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
                    },
                  );
                },
                textColor: Colors.white,
                text: 'Удалить',
              ),
            ],
          ),
        ),
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
}
