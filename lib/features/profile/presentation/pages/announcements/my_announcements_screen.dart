import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/announecement_list_view.dart';

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
    final profileBloc = BlocProvider.of<ProfileBloc>(context);
    if (!profileBloc.state.isAnnouncementsLoaded) {
      profileBloc.add(const ProfileEvent.getAll());
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
                child: BlocBuilder<ProfileBloc, ProfileState>(
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
                        AnnouncementListView<ProfileEvent, ProfileState>(
                          getList: (context) => context.read<ProfileBloc>().state.orders,
                          //route: ({required int id}) => OrderDetailRoute(id: id),
                          isLast: state.lastForOrders!,
                          loadMoreEvent: (context) => const ProfileEvent.loadMoreOrders(),
                          loadfirstPage: (context) => const ProfileEvent.getOrders(),
                          getBloc: (context) => context.read<ProfileBloc>(),
                        ),
                        AnnouncementListView<ProfileEvent, ProfileState>(
                          getList: (context) => context.read<ProfileBloc>().state.equipments,
                          //route: ({required int id}) => EquipmentDetailRoute(id: id),
                          isLast: state.lastForEquipment!,
                          loadMoreEvent: (context) => const ProfileEvent.loadMoreEquipments(),
                          loadfirstPage: (context) => const ProfileEvent.getEquipments(),
                          getBloc: (context) => context.read<ProfileBloc>(),
                        ),
                        AnnouncementListView<ProfileEvent, ProfileState>(
                          getList: (context) => context.read<ProfileBloc>().state.services,
                          //route: ({required int id}) => ServiceDetailRoute(id: id),
                          isLast: state.lastForServices!,
                          loadMoreEvent: (context) => const ProfileEvent.loadMoreServices(),
                          loadfirstPage: (context) => const ProfileEvent.getServices(),
                          getBloc: (context) => context.read<ProfileBloc>(),
                        ),
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
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(currentSegment, 'current_segment');
  }

  void onValueChanged(int? newValue) {
    setState(() {
      currentSegment.value = newValue!;
    });
  }
}
