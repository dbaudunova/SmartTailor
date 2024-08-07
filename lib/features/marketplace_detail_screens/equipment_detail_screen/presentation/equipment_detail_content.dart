import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/author_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/detail_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class EquipmentDetailContent extends StatefulWidget {
  final int id;

  const EquipmentDetailContent({required this.id, super.key});

  @override
  State<EquipmentDetailContent> createState() => _EquipmentDetailContentState();
}

class _EquipmentDetailContentState extends State<EquipmentDetailContent> {
  @override
  void initState() {
    super.initState();
    _bloc.add(EquipmentDetailEvent.getEquipment(id: widget.id));
  }

  EquipmentDetailBloc get _bloc => context.read<EquipmentDetailBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EquipmentDetailBloc, EquipmentDetailState>(
      builder: (context, state) {
        var equipment = state.equipment;
        return Scaffold(
          floatingActionButton: _buildButtons(equipment.id),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: AppBarStyle(title: t.orderDetail, centerTitle: true),
          body: SingleChildScrollView(
              child: Column(
            children: [
              GalleryWidget(
                images: equipment.equipmentImages!,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.550,
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        left: 16,
                        right: 16,
                        top: 24,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DetailInfoWidget(
                              description: equipment.description!,
                              name: equipment.name!,
                              price: equipment.price!,
                            ),
                            const SizedBox(height: 24),
                            Divider(
                              height: 0.33,
                              color: AppColors.buttonUnavailableBack
                                  .withOpacity(0.6),
                            ),
                            const SizedBox(height: 20),
                            AuthorInfoWidget(
                              authorImage: equipment.authorImage!,
                              authorName: equipment.authorFullName!,
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        );
      },
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogStyle(
          title: 'Ваш заказ в обработке',
          content: 'Заказ отображается в вашем личном кабинете',
          buttonText: 'Понятно',
          onButtonPressed: () {
            AutoRouter.of(context).maybePop();
          },
        );
      },
    );
  }

  Widget _buildButtons(int? id) {
    return SingleChildScrollView(
      child: BlocBuilder<EquipmentDetailBloc, EquipmentDetailState>(
        builder: (context, state) {
          return state.stateStatus != const StateStatus.loading()
              ? ElevatedButtonWidget(
                  text: t.buy,
                  onTap: () {
                    context.read<EquipmentDetailBloc>().add(
                          EquipmentDetailEvent.buyEquipment(
                            id: id,
                          ),
                        );
                  },
                  color: AppColors.orange,
                )
              : ElevatedButtonWidget(
                  text: t.buy,
                  onTap: null,
                  color: AppColors.orange,
                );
        },
      ),
    );
  }
}
