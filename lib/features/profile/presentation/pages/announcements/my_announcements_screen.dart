import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
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
    final profileBloc = BlocProvider.of<AnnouncementBloc>(context);
    if (!profileBloc.state.isAnnouncementsLoaded) {
      profileBloc.add(const AnnouncementEvent.getAll());
    }
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
                        AnnouncementListView<AnnouncementEvent, AnnouncementState>(
                          getList: (context) => context.read<AnnouncementBloc>().state.orders,
                          route: ({required int id}) => AnnouncementDetailRoute(id: id, type: AnnouncementType.order),
                          isLast: state.lastForOrders!,
                          loadMoreEvent: (context) => const AnnouncementEvent.loadMoreOrders(),
                          loadfirstPage: (context) => const AnnouncementEvent.getOrders(),
                          getBloc: (context) => context.read<AnnouncementBloc>(),
                        ),
                        AnnouncementListView<AnnouncementEvent, AnnouncementState>(
                          getList: (context) => context.read<AnnouncementBloc>().state.equipments,
                          route: ({required int id}) =>
                              AnnouncementDetailRoute(id: id, type: AnnouncementType.equipment),
                          isLast: state.lastForEquipment!,
                          loadMoreEvent: (context) => const AnnouncementEvent.loadMoreEquipments(),
                          loadfirstPage: (context) => const AnnouncementEvent.getEquipments(),
                          getBloc: (context) => context.read<AnnouncementBloc>(),
                        ),
                        AnnouncementListView<AnnouncementEvent, AnnouncementState>(
                          getList: (context) => context.read<AnnouncementBloc>().state.services,
                          route: ({required int id}) => AnnouncementDetailRoute(id: id, type: AnnouncementType.service),
                          isLast: state.lastForServices!,
                          loadMoreEvent: (context) => const AnnouncementEvent.loadMoreServices(),
                          loadfirstPage: (context) => const AnnouncementEvent.getServices(),
                          getBloc: (context) => context.read<AnnouncementBloc>(),
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
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(currentSegment, 'current_segment');
  }

  void onValueChanged(int? newValue) {
    setState(() {
      currentSegment.value = newValue!;
    });
  }
}
