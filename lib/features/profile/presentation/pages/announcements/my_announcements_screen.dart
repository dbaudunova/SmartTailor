import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/empty_refresh_list_text.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_type.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/announecement_list_view.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class MyAnnouncementsScreen extends StatefulWidget {
  const MyAnnouncementsScreen({super.key});

  @override
  State<MyAnnouncementsScreen> createState() => _MyAnnouncementsScreenState();
}

class _MyAnnouncementsScreenState extends State<MyAnnouncementsScreen> with TickerProviderStateMixin, RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    BlocProvider.of<AnnouncementBloc>(context).add(
      const AnnouncementEvent.getAll(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = double.infinity;
    final children = <int, Widget>{
      0: _buildSegmentText('Заказы', 0),
      1: _buildSegmentText('Оборудование', 1),
      2: _buildSegmentText('Услуги', 2),
    };
    return Scaffold(
      appBar: AppBarStyle(
        centerTitle: true,
        title: 'Мои объявления',
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
              const SizedBox(height: 16),
              _buildNavBar(segmentedControlMaxWidth, children),
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<AnnouncementBloc, AnnouncementState>(
                  builder: (context, state) {
                    return PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          currentSegment.value = index;
                        });
                      },
                      children: [
                        //return state.stateStatus != const StateStatus.loading()
                        //                 ? state.purchases!.isNotEmpty
                        //                     ? _buildListView(state)
                        //                     : Center(
                        //                         child: EmptyRefreshListText(
                        //                           onRefresh: () async {
                        //                             _bloc.add(const PurchasesEvent.getMyPurchases());
                        //                           },
                        //                         ),
                        //                       )
                        //                 : const Center(
                        //                     child: CircularProgressIndicator(),
                        //                   );
                        state.stateStatus != const StateStatus.loading()
                            ? state.orders.isNotEmpty
                                ? _buildAnnouncementListView(
                                    context: context,
                                    list: state.orders,
                                    isLast: state.lastForOrders,
                                    loadMoreEvent: const AnnouncementEvent.loadMoreOrders(),
                                    loadFirstPage: const AnnouncementEvent.getOrders(),
                                    type: AnnouncementType.order,
                                  )
                                : Center(
                                    child: EmptyRefreshListText(
                                      onRefresh: () async {
                                        BlocProvider.of<AnnouncementBloc>(context).add(
                                          const AnnouncementEvent.getOrders(),
                                        );
                                      },
                                    ),
                                  )
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                        state.stateStatus != const StateStatus.loading()
                            ? state.equipments.isNotEmpty
                                ? _buildAnnouncementListView(
                                    context: context,
                                    list: state.equipments,
                                    isLast: state.lastForEquipment,
                                    loadMoreEvent: const AnnouncementEvent.loadMoreEquipments(),
                                    loadFirstPage: const AnnouncementEvent.getEquipments(),
                                    type: AnnouncementType.equipment,
                                  )
                                : Center(
                                    child: EmptyRefreshListText(
                                      onRefresh: () async {
                                        BlocProvider.of<AnnouncementBloc>(context).add(
                                          const AnnouncementEvent.getEquipments(),
                                        );
                                      },
                                    ),
                                  )
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                        state.stateStatus != const StateStatus.loading()
                            ? state.services.isNotEmpty
                                ? _buildAnnouncementListView(
                                    context: context,
                                    list: state.services,
                                    isLast: state.lastForServices,
                                    loadMoreEvent: const AnnouncementEvent.loadMoreServices(),
                                    loadFirstPage: const AnnouncementEvent.getServices(),
                                    type: AnnouncementType.service,
                                  )
                                : Center(
                                    child: EmptyRefreshListText(
                                      onRefresh: () async {
                                        BlocProvider.of<AnnouncementBloc>(context).add(
                                          const AnnouncementEvent.getServices(),
                                        );
                                      },
                                    ),
                                  )
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          FabButtonWidget(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                backgroundColor: AppColors.white,
                builder: (BuildContext context) {
                  return BlocProvider(
                    create: (context) => getIt<AnnouncementBloc>(),
                    child: BlocBuilder<AnnouncementBloc, AnnouncementState>(
                      builder: (context, state) {
                        final _bloc = context.read<AnnouncementBloc>();

                        // if (currentSegment.value == 0) {
                        return SearchOrderSheet<AdvertisementEntity>(
                          items: state.searchedAdvertisement,
                          titleBuilder: (item) => (item).name,
                          // priceBuilder: (item) => (item).price.toInt().toString(),
                          onchange: (value) {
                            _bloc.add(AnnouncementEvent.searchAdvertisement(query: value));
                          },
                          onTap: (item) => context.router.push(
                            OrderDetailRoute(id: item.id),
                          ),
                        );
                        // } else if (currentSegment.value == 1) {
                        //   return SearchOrderSheet<AdvertisementEntity>(
                        //     items: state.searchedEquipment,
                        //     titleBuilder: (item) => (item).name,
                        //     priceBuilder: (item) => (item).price.toInt().toString(),
                        //     onchange: (value) {
                        //       _bloc.add(MarketplaceEvent.searchEquipmnet(query: value));
                        //     },
                        //     onTap: (item) => context.router.push(
                        //       EquipmentDetailRoute(id: item.id),
                        //     ),
                        //   );
                        // } else {
                        //   return SearchOrderSheet<AdvertisementEntity>(
                        //     items: state.searchedServices,
                        //     titleBuilder: (item) => (item).name,
                        //     priceBuilder: (item) => (item).price.toInt().toString(),
                        //     onchange: (value) {
                        //       _bloc.add(MarketplaceEvent.searchService(query: value));
                        //     },
                        //     onTap: (item) => context.router.push(
                        //       ServiceDetailRoute(id: item.id),
                        //     ),
                        //   );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  CupertinoNavigationBar _buildNavBar(
    double segmentedControlMaxWidth,
    Map<int, Widget> children,
  ) {
    return CupertinoNavigationBar(
      border: const Border(),
      backgroundColor: AppColors.background,
      automaticallyImplyLeading: false,
      middle: SizedBox(
        width: segmentedControlMaxWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CupertinoSlidingSegmentedControl<int>(
            children: children,
            onValueChanged: (int? newValue) {
              if (newValue != null) {
                _pageController.animateToPage(
                  newValue,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            groupValue: currentSegment.value,
          ),
        ),
      ),
    );
  }

  Widget _buildSegmentText(String label, int index) {
    return Text(
      label,
      style: currentSegment.value == index
          ? AppTextStyle.text14.copyWith(
              fontWeight: FontWeight.w600,
            )
          : AppTextStyle.text14,
    );
  }

  Widget _buildAnnouncementListView({
    required BuildContext context,
    required List<dynamic> list,
    required bool? isLast,
    required AnnouncementEvent loadMoreEvent,
    required AnnouncementEvent loadFirstPage,
    required AnnouncementType type,
  }) {
    if (list.isEmpty) {
      return EmptyRefreshListText(
        onRefresh: () async {
          context.read<AnnouncementBloc>().add(loadFirstPage);
        },
      );
    }

    return AnnouncementListView<AnnouncementEvent, AnnouncementState>(
      getList: (context) => list,
      route: ({required int id}) => AnnouncementDetailRoute(id: id, type: type),
      isLast: isLast!,
      loadMoreEvent: (context) => loadMoreEvent,
      loadfirstPage: (context) => loadFirstPage,
      getBloc: (BuildContext context) => context.read<AnnouncementBloc>(),
    );
  }

  @override
  String get restorationId => 'cupertino_segmented_control';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(currentSegment, 'current_segment');
  }

  void onValueChanged(int? newValue) {
    setState(() {
      currentSegment.value = newValue!;
    });
  }
}
