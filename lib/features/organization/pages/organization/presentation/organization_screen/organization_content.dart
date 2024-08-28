import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/presentation/current_orders_screen.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/presentation/employees_screen.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/history_list_screen.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/bloc/organization_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/presentation/organization_empty_screen.dart';
import 'package:neobis_smart_tailor/features/organization/pages/positions/presentation/widgets/positions_widget_screen.dart';
import 'package:neobis_smart_tailor/features/organization/widgets/organization_info/organization_info_row.dart';

class OrganizationContent extends StatefulWidget {
  const OrganizationContent({super.key});

  @override
  State<OrganizationContent> createState() => _OrganizationContentState();
}

class _OrganizationContentState extends State<OrganizationContent> with TickerProviderStateMixin, RestorationMixin {
  RestorableInt currentSegment = RestorableInt(0);
  final PageController _pageController = PageController(initialPage: 0);
  final ScrollController _scrollController = ScrollController();

  OrganizationBloc get _bloc => context.read<OrganizationBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const OrganizationEvent.getOrganization());
  }

  @override
  Widget build(BuildContext context) {
    const segmentedControlMaxWidth = double.infinity;
    final children = <int, Widget>{
      0: _buildSegmentText('Сотрудники', 0),
      1: _buildSegmentText('Должности', 1),
      2: _buildSegmentText('Текущие заказы', 2),
      3: _buildSegmentText('История', 3),
    };

    return BlocBuilder<OrganizationBloc, OrganizationState>(
      builder: (context, state) {
        var organizationInfo = state.organizationInfo;
        return state.stateStatus == const StateStatus.loading()
            ? const Center(child: CircularProgressIndicator())
            : state.organizationHasLoaded
                ? Scaffold(
                    appBar: const AppBarStyle(
                      title: 'Организация',
                      centerTitle: true,
                    ),
                    body: Column(
                      children: [
                        OrganizationInfoRow(
                          name: organizationInfo!.name!,
                          description: organizationInfo.description!,
                          imageUrl: organizationInfo.imagePath!,
                          date: organizationInfo.createdAt!,
                        ),
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
                            children: const [
                              EmployeesScreen(),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: PositionsWidgetScreen(),
                              ),
                              CurrentOrdersScreen(),
                              HistoryListScreen()
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : const OrganizationEmptyScreen();
      },
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
                      _pageController.jumpToPage(
                        newValue,
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
