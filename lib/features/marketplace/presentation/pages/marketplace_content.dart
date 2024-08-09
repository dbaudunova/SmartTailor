import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/bloc/marketplace_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/list_view_widget.dart';
import 'package:neobis_smart_tailor/gen/strings.g.dart';

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
      child: Stack(
        children: [
          Column(
            children: [
              _buildNavBar(segmentedControlMaxWidth, children),
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<MarketplaceBloc, MarketplaceState>(
                  builder: (context, state) {
                    print(state.orders.length);
                    return PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          currentSegment.value = index;
                        });
                      },
                      children: [
                        ListViewWidget<MarketplaceEvent, MarketplaceState>(
                          getList: (context) => context.read<MarketplaceBloc>().state.orders,
                          // list: state.orders,
                          route: ({required int id}) => OrderDetailRoute(id: id),
                          isLast: state.lastForOrders!,
                          loadMoreEvent: (context) => const MarketplaceEvent.loadMoreOrders(),
                          loadfirstPage: (context) => const MarketplaceEvent.getOrders(),
                          getBloc: (context) => context.read<MarketplaceBloc>(),
                        ),
                        ListViewWidget<MarketplaceEvent, MarketplaceState>(
                          getList: (context) => context.read<MarketplaceBloc>().state.equipments,
                          route: ({required int id}) => EquipmentDetailRoute(id: id),
                          isLast: state.lastForEquipment!,
                          loadMoreEvent: (context) => const MarketplaceEvent.loadMoreEquipments(),
                          loadfirstPage: (context) => const MarketplaceEvent.getEquipments(),
                          getBloc: (context) => context.read<MarketplaceBloc>(),
                        ),
                        ListViewWidget<MarketplaceEvent, MarketplaceState>(
                          getList: (context) => context.read<MarketplaceBloc>().state.services,
                          route: ({required int id}) => ServiceDetailRoute(id: id),
                          isLast: state.lastForServices!,
                          loadMoreEvent: (context) => const MarketplaceEvent.loadMoreServices(),
                          loadfirstPage: (context) => const MarketplaceEvent.getServices(),
                          getBloc: (context) => context.read<MarketplaceBloc>(),
                        ),
                        // MarketplaceTabBarView(tabIndex: 0, list: state.orders),
                        // MarketplaceTabBarView(
                        //   tabIndex: 1,
                        //   list: state.equipments,
                        // ),
                        // MarketplaceTabBarView(
                        //   tabIndex: 2,
                        //   list: state.services,
                        // ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          FabButtonWidget(onTap: () {
            showModalBottomSheet<void>(
              context: context,
              backgroundColor: AppColors.white,
              builder: (BuildContext context) {
                return const SearchOrderSheet();
              },
            );
          }),
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
