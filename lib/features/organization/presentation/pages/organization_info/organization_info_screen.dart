import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/employee_item.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/organization_info_row.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/announcement_container.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/order_history/order_container.dart';

@RoutePage()
class OrganizationInfoScreen extends StatefulWidget {
  const OrganizationInfoScreen({super.key});

  @override
  State<OrganizationInfoScreen> createState() => _OrganizationInfoScreenState();
}

class _OrganizationInfoScreenState extends State<OrganizationInfoScreen>
    with TickerProviderStateMixin, RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);
  final PageController _pageController = PageController(initialPage: 0);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = double.infinity;
    final children = <int, Widget>{
      0: _buildSegmentText('Сотрудники', 0),
      1: _buildSegmentText('Должности', 1),
      2: _buildSegmentText('Текущие заказы', 2),
      3: _buildSegmentText('История', 3),
    };

    return Scaffold(
      appBar: AppBarStyle(
        title: 'Организация',
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            AutoRouter.of(context).maybePop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
          ),
        ),
      ),
      body: Column(
        children: [
          const OrganizationInfoRow(),
          const SizedBox(height: 16),
          _buildNavBar(segmentedControlMaxWidth, children),
          const SizedBox(height: 16),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentSegment.value = index;
                });
                _scrollToCurrentSegment(index);
              },
              children: [
                _buildEmployeeListView(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: _buildEmployeePositionTab(),
                ),
                _buildOrderListView(),
                _buildCompletedOrdersListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildCompletedOrdersListView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: OrderContainer(
              isActive: false,
              onTap: () {
                AutoRouter.of(context).push(const HistoryDetailRoute());
              },
            ),
          );
        },
      ),
    );
  }

  CupertinoNavigationBar _buildNavBar(double segmentedControlMaxWidth, Map<int, Widget> children) {
    return CupertinoNavigationBar(
      border: const Border(),
      backgroundColor: AppColors.background,
      automaticallyImplyLeading: false,
      middle: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: segmentedControlMaxWidth,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CupertinoSlidingSegmentedControl<int>(
                  children: children,
                  onValueChanged: (int? newValue) {
                    if (newValue != null) {
                      _pageController.animateToPage(
                        newValue,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        currentSegment.value = newValue;
                      });
                      _scrollToCurrentSegment(newValue);
                    }
                  },
                  groupValue: currentSegment.value,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _scrollToCurrentSegment(int index) {
    const segmentWidth = 60.0;
    final position = index * segmentWidth;
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
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

  ListView _buildOrderListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
          child: AnnouncementsContainer(
            onTap: () {
              AutoRouter.of(context).push(const CurrentOrderDetailRoute());
            },
            price: '1000 сом',
          ),
        );
      },
    );
  }

  Stack _buildEmployeePositionTab() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Text(
            'У вас пока нет должностей',
            style: AppTextStyle.textField16.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Positioned(
          bottom: 32,
          left: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButtonWidget(
              text: 'Добавить должность',
              onTap: () {
                AutoRouter.of(context).push(const EmployeePositionRoute());
              },
            ),
          ),
        ),
      ],
    );
  }

  Stack _buildEmployeeListView() {
    return Stack(
      children: [
        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: _buildEmployeeItemBuilder,
        ),
        Positioned(
          bottom: 32,
          left: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButtonWidget(
                text: 'Пригласить сотрудника',
                onTap: () {
                  AutoRouter.of(context).push(const InviteEmployeeRoute());
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget? _buildEmployeeItemBuilder(context, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
      child: EmployeeItemContainer(
        onTap: () {
          AutoRouter.of(context).push(const EmployeeDetailRoute());
        },
      ),
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
