import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/empty_refresh_list_text.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/loading_list_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/common_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/search_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/list_view_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class MarketplaceContent extends StatefulWidget {
  const MarketplaceContent({super.key});

  @override
  State<MarketplaceContent> createState() => _MarketplaceContentState();
}

int selectedSegment = 0;

class _MarketplaceContentState extends State<MarketplaceContent> with RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);
  final PageController _pageController = PageController(initialPage: 0);

  MarketplaceBloc get _bloc => context.read<MarketplaceBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const MarketplaceEvent.getAll());
  }

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = double.infinity;

    final children = <int, Widget>{
      0: _buildSegmentText(t.order, 0),
      1: _buildSegmentText(t.equipment, 1),
      2: _buildSegmentText(t.service, 2),
    };

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: false,
        padding: const EdgeInsetsDirectional.only(top: 16, start: 16),
        border: const Border(),
        backgroundColor: AppColors.background,
        leading: Text(
          t.marketplace,
          style: AppTextStyle.s20w400Orange.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      child: BlocBuilder<MarketplaceBloc, MarketplaceState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  _buildNavBar(segmentedControlMaxWidth, children),
                  const SizedBox(height: 16),
                  Expanded(
                      child: state.stateStatus != StateStatus.loading
                          ? PageView(
                              controller: _pageController,
                              onPageChanged: (index) {
                                setState(() {
                                  currentSegment.value = index;
                                });
                              },
                              children: [
                                state.stateStatus != const StateStatus.loading()
                                    ? state.orders.isNotEmpty
                                        ? ListViewWidget<GeneralEntity>(
                                            priceBuilder: (item) => _buildPrice(item),
                                            dateBuilder: (item) => item.dateOfExecution,
                                            descriptionBuilder: (item) => item.description!,
                                            imageBuilder: (item) => item.imageUrl!,
                                            titleBuilder: (item) => item.name!,
                                            items: state.orders,
                                            onNotification: (scrollNotification) {
                                              if (state.lastForOrders!) {
                                                return false;
                                              } else if (scrollNotification is ScrollEndNotification &&
                                                  scrollNotification.metrics.extentAfter == 0) {
                                                _bloc.add(const MarketplaceEvent.loadMoreOrders());
                                              }

                                              return false;
                                            },
                                            onRefresh: () async {
                                              _bloc.add(const MarketplaceEvent.getOrders());
                                            },
                                            onTap: (item) => context.router.push(
                                              OrderDetailRoute(id: item.id!),
                                            ),
                                          )
                                        : EmptyRefreshListText(
                                            onRefresh: () async {
                                              _bloc.add(
                                                const MarketplaceEvent.getOrders(),
                                              );
                                            },
                                          )
                                    : const LoadingListWidget(),
                                state.stateStatus != const StateStatus.loading()
                                    ? state.equipments.isNotEmpty
                                        ? ListViewWidget<GeneralEntity>(
                                            priceBuilder: (item) => _buildPrice(item),
                                            descriptionBuilder: (item) => item.description!,
                                            imageBuilder: (item) => item.imageUrl!,
                                            titleBuilder: (item) => item.name!,
                                            items: state.equipments,
                                            onNotification: (scrollNotification) {
                                              if (state.lastForEquipment!) {
                                                return false;
                                              } else if (scrollNotification is ScrollEndNotification &&
                                                  scrollNotification.metrics.extentAfter == 0) {
                                                _bloc.add(const MarketplaceEvent.loadMoreEquipments());
                                              }

                                              return false;
                                            },
                                            onRefresh: () async {
                                              _bloc.add(const MarketplaceEvent.getEquipments());
                                            },
                                            onTap: (item) => context.router.push(
                                              EquipmentDetailRoute(id: item.id!),
                                            ),
                                          )
                                        : EmptyRefreshListText(
                                            onRefresh: () async {
                                              _bloc.add(const MarketplaceEvent.getEquipments());
                                            },
                                          )
                                    : const LoadingListWidget(),
                                state.stateStatus != const StateStatus.loading()
                                    ? state.services.isNotEmpty
                                        ? ListViewWidget<GeneralEntity>(
                                            descriptionBuilder: (item) => item.description!,
                                            imageBuilder: (item) => item.imageUrl!,
                                            titleBuilder: (item) => item.name!,
                                            items: state.services,
                                            onNotification: (scrollNotification) {
                                              if (state.lastForOrders!) {
                                                return false;
                                              } else if (scrollNotification is ScrollEndNotification &&
                                                  scrollNotification.metrics.extentAfter == 0) {
                                                _bloc.add(const MarketplaceEvent.loadMoreServices());
                                              }

                                              return false;
                                            },
                                            onRefresh: () async {
                                              _bloc.add(const MarketplaceEvent.getServices());
                                            },
                                            onTap: (item) => context.router.push(
                                              ServiceDetailRoute(id: item.id!),
                                            ),
                                          )
                                        : EmptyRefreshListText(onRefresh: () async {
                                            _bloc.add(
                                              const MarketplaceEvent.getServices(),
                                            );
                                          })
                                    : const LoadingListWidget()
                              ],
                            )
                          : const Center(
                              child: CircularProgressIndicator(),
                            )),
                ],
              ),
              FabButtonWidget(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    backgroundColor: AppColors.white,
                    builder: (BuildContext context) {
                      return BlocProvider(
                        create: (context) => getIt<MarketplaceBloc>(),
                        child: BlocBuilder<MarketplaceBloc, MarketplaceState>(
                          builder: (context, state) {
                            final _bloc = context.read<MarketplaceBloc>();

                            if (currentSegment.value == 0) {
                              return SearchOrderSheet<AdvertisementEntity>(
                                items: state.searchedOrders,
                                titleBuilder: (item) => (item).name,
                                priceBuilder: (item) => (item).price!.toInt().toString(),
                                onchange: (value) {
                                  _bloc.add(MarketplaceEvent.searchOrder(query: value));
                                },
                                onTap: (item) => context.router.push(
                                  OrderDetailRoute(id: item.id),
                                ),
                              );
                            } else if (currentSegment.value == 1) {
                              return SearchOrderSheet<AdvertisementEntity>(
                                items: state.searchedEquipment,
                                titleBuilder: (item) => (item).name,
                                priceBuilder: (item) => (item).price!.toInt().toString(),
                                onchange: (value) {
                                  _bloc.add(MarketplaceEvent.searchEquipmnet(query: value));
                                },
                                onTap: (item) => context.router.push(
                                  EquipmentDetailRoute(id: item.id),
                                ),
                              );
                            } else {
                              return SearchOrderSheet<AdvertisementEntity>(
                                items: state.searchedServices,
                                titleBuilder: (item) => (item).name,
                                priceBuilder: (item) => (item).price!.toInt().toString(),
                                onchange: (value) {
                                  _bloc.add(MarketplaceEvent.searchService(query: value));
                                },
                                onTap: (item) => context.router.push(
                                  ServiceDetailRoute(id: item.id),
                                ),
                              );
                            }
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Text _buildPrice(GeneralEntity item) {
    return Text(
      '${item.price} сом',
      style: AppTextStyle.textField16.copyWith(color: AppColors.black.withOpacity(0.60)),
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

  Text _buildSegmentText(String label, int index) {
    return Text(
      label,
      style: currentSegment.value == index
          ? AppTextStyle.text14.copyWith(
              fontWeight: FontWeight.w600,
            )
          : AppTextStyle.text14,
    );
  }

  @override
  String get restorationId => 'cupertino_segmented_control';

  @override
  void restoreState(
    RestorationBucket? oldBucket,
    bool initialRestore,
  ) {
    registerForRestoration(currentSegment, 'current_segment');
  }

  void onValueChanged(int? newValue) {
    setState(() {
      currentSegment.value = newValue!;
    });
  }
}
