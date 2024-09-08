import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/shimmer_for_screen.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/author_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/announcement_type.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/my_detailed_annoucement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/my_announcements/customer_container.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/my_announcements/size_widget.dart';
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
  State<AnnouncementDetailScreen> createState() => _AnnouncementDetailScreenState();
}

class _AnnouncementDetailScreenState extends State<AnnouncementDetailScreen> {
  bool _isCustomerExpanded = false;
  bool _isResponseExpanded = false;
  final bool _isOrderAccepted = false;
  late Map<String, dynamic> detailedData;

  AnnouncementBloc get _bloc => context.read<AnnouncementBloc>();

  @override
  void initState() {
    super.initState();
    switch (widget.type) {
      case AnnouncementType.order:
        _bloc.add(AnnouncementEvent.getOrderDetailed(id: widget.id));
      case AnnouncementType.equipment:
        _bloc.add(AnnouncementEvent.getEquipmentDetailed(id: widget.id));
      case AnnouncementType.service:
        _bloc.add(AnnouncementEvent.getServiceDetailed(id: widget.id));
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
              var entity = state.myDetailedAnnounceEntity;

              return entity != null
                  ? state.stateStatus != const StateStatus.loading()
                      ? Column(
                          children: [
                            GalleryWidget(
                              images: entity.images,
                              date: entity.dateOfExecution,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getAnnouncementTypeLabel(widget.type),
                                        style: AppTextStyle.textField16.copyWith(
                                          color: typeColor(widget.type),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        entity.name,
                                        style: AppTextStyle.textField16,
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        entity.description,
                                        style: AppTextStyle.text14.copyWith(color: AppColors.greyText),
                                      ),
                                      const SizedBox(height: 40),
                                      AuthorInfoWidget(
                                        authorImage: entity.authorImage,
                                        authorName: entity.authorFullName,
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
                                                  _isCustomerExpanded = !_isCustomerExpanded;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      const SizedBox(height: 4),
                                      if (_isCustomerExpanded && widget.type == AnnouncementType.order)
                                        _buildSizeContainer(entity),
                                      const SizedBox(height: 8),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width,
                                        child: PurchaseDetailButton(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          child: _buildExpandableButton(
                                            title: _isOrderAccepted
                                                ? 'Исполнитель'
                                                : widget.type == AnnouncementType.equipment
                                                    ? 'Покупатели'
                                                    : 'Отклики',
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
                                      if (_isResponseExpanded) _buildCustomerContainer(entity),
                                      const SizedBox(height: 130),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const ShimmerForScreen()
                  : const ShimmerForScreen();
            },
          ),
          _buildBottomButtons(context, widget.type),
        ],
      ),
    );
  }

  void _showAcceptanceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogStyle(
          title: 'Ура!',
          content: 'Заказ был успешно принят!',
          buttonText: 'Закрыть',
          onButtonPressed: () {
            AutoRouter.of(context).pushNamed('/my_announcements');
          },
        );
      },
    );
  }

  Container _buildCustomerContainer(MyDetailedAnnounceEntity? entity) {
    var orderCandidates = <dynamic>[];
    var executor = entity!.executor;

    switch (widget.type) {
      case AnnouncementType.order:
        orderCandidates = entity.orderCandidates!;
      case AnnouncementType.equipment:
        orderCandidates = entity.equipmentBuyers!;
      case AnnouncementType.service:
        orderCandidates = entity.serviceApplicants!;
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: executor != null ? 1 : orderCandidates.length,
        itemBuilder: (context, index) {
          if (widget.type == AnnouncementType.order) {
            if (executor != null) {
              final orgExecutor = executor;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomerContainer(
                  name: orgExecutor.employeeFullName ?? '',
                  email: orgExecutor.employeeEmail ?? '',
                ),
              );
            } else {
              final orderCandidate = orderCandidates[index] as OrderCandidates;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomerContainer(
                  isOrder: true,
                  onTap: () {
                    _bloc.add(
                      AnnouncementEvent.assignExecutorToOrder(
                        executorId: orderCandidate.employeeId,
                        orderId: widget.id,
                      ),
                    );
                    _showAcceptanceDialog(context);
                  },
                  name: orderCandidate.employeeFullName ?? '',
                  email: orderCandidate.employeeEmail ?? '',
                ),
              );
            }
          } else {
            final equipmentBuyer = orderCandidates[index] as EquipmentBuyers;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomerContainer(
                name: equipmentBuyer.fullName ?? '',
                email: equipmentBuyer.email ?? '',
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
            fontSize: 17,
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            isExpanded ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSizeContainer(MyDetailedAnnounceEntity? entity) {
    var orderItems = entity!.orderItems;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: orderItems!.length,
        itemBuilder: (context, index) {
          final item = orderItems[index];
          return SizeWidget(item: item);
        },
      ),
    );
  }

  void _showHideDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ExitAlert(
          confirmButton: () {
            _bloc.add(
              AnnouncementEvent.hide(id: widget.id, type: widget.type),
            );
            AutoRouter.of(context).maybePop();
            AppSnackBar.show(
              context: context,
              titleText: 'Объявление было скрыто',
            );
          },
          cancelButton: () {
            AutoRouter.of(context).maybePop();
          },
          title: 'Вы уверены, что хотите скрыть объявление?',
        );
      },
    );
  }

  Widget _buildBottomButtons(BuildContext context, AnnouncementType type) {
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
                  _showHideDialog(context);
                },
                text: 'Скрыть объявление',
              ),
              const SizedBox(height: 16),
              _buildTransparentButton(
                backgroundColor: AppColors.error,
                onPressed: () {
                  _showDeleteDialog(context);
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

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ExitAlert(
          confirmButton: () {
            _bloc.add(
              AnnouncementEvent.delete(
                id: widget.id,
                type: widget.type,
              ),
            );
            AutoRouter.of(context).push(const ProfileRoute());
            AppSnackBar.show(
              context: context,
              titleText: 'Объявление было удалено',
            );
          },
          cancelButton: () {
            AutoRouter.of(context).maybePop();
          },
          title: 'Удалить объявление?',
        );
      },
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
