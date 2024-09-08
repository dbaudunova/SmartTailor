import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/shimmer_for_screen.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/presentation/bloc/order_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/author_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/custom_dropdown_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/detail_info_widget.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/widgets/gallery_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

class OrderDetailContent extends StatefulWidget {
  final int id;
  const OrderDetailContent({required this.id, super.key});

  @override
  State<OrderDetailContent> createState() => _OrderDetailContentState();
}

class _OrderDetailContentState extends State<OrderDetailContent> {
  @override
  void initState() {
    super.initState();
    _bloc.add(OrderDetailEvent.getOrder(id: widget.id));
  }

  OrderDetailBloc get _bloc => context.read<OrderDetailBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderDetailBloc, OrderDetailState>(
      builder: (context, state) {
        var order = state.order;
        return Scaffold(
          floatingActionButton: _buildButtons(widget.id, state),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          appBar: AppBarStyle(title: t.orderDetail, centerTitle: true),
          body: order != null
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      GalleryWidget(
                        images: order.orderImages!,
                        date: order.dateOfExecution,
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
                                      description: order.description!,
                                      name: order.name!,
                                      price: order.price!,
                                    ),
                                    const SizedBox(height: 24),
                                    Divider(
                                      height: 0.33,
                                      color: AppColors.buttonUnavailableBack.withOpacity(0.6),
                                    ),
                                    const SizedBox(height: 20),
                                    CustomDropdown(
                                      items: order.orderItems,
                                    ),
                                    AuthorInfoWidget(
                                      authorImage: order.authorImage!,
                                      authorName: order.authorFullName!,
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
                  ),
                )
              : const ShimmerForScreen(),
        );
      },
    );
  }

  Widget _buildButtons(int? id, OrderDetailState state) {
    return state.stateStatus != const StateStatus.loading()
        ? ElevatedButtonWidget(
            text: t.acceptOrder,
            onTap: () {
              context.read<OrderDetailBloc>().add(
                    OrderDetailEvent.requestToExecute(
                      id: id,
                    ),
                  );
            },
            color: AppColors.white,
          )
        : ElevatedButtonWidget(
            text: t.acceptOrder,
            onTap: null,
            color: AppColors.white,
          );
  }
}
