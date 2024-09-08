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
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/announcement/announcement_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/my_announcements/my_equipments_list_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/my_announcements/my_orders_list_widget.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/my_announcements/my_services_list_widget.dart';

class MyAnnouncementsContent extends StatefulWidget {
  const MyAnnouncementsContent({super.key});

  @override
  State<MyAnnouncementsContent> createState() => _MyAnnouncementsScreenState();
}

class _MyAnnouncementsScreenState extends State<MyAnnouncementsContent>
    with TickerProviderStateMixin, RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);
  final PageController _pageController = PageController(initialPage: 0);

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
              _buildPageViews(),
            ],
          ),
          _buildSearchTab(),
        ],
      ),
    );
  }

  Expanded _buildPageViews() {
    return Expanded(
      child: BlocBuilder<AnnouncementBloc, AnnouncementState>(
        builder: (context, state) {
          return PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentSegment.value = index;
              });
            },
            children: const [
              MyOrdersListWidget(),
              MyEquipmentsListWidget(),
              MyServicesListWidget(),
            ],
          );
        },
      ),
    );
  }

  FabButtonWidget _buildSearchTab() {
    return FabButtonWidget(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          backgroundColor: AppColors.white,
          builder: (BuildContext context) {
            return BlocBuilder<AnnouncementBloc, AnnouncementState>(
              builder: (context, state) {
                final bloc = context.read<AnnouncementBloc>();
                return SearchOrderSheet<AdvertisementEntity>(
                  items: state.searchedAdvertisement,
                  titleBuilder: (item) => (item).name,
                  onchange: (value) {
                    bloc.add(
                      AnnouncementEvent.searchAdvertisement(query: value),
                    );
                  },
                  onTap: (item) => context.router.push(
                    OrderDetailRoute(id: item.id),
                  ),
                );
              },
            );
          },
        );
      },
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
                _pageController.jumpToPage(
                  newValue,
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
