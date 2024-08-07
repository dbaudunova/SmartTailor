import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/fab_button_widget.dart';
import 'package:neobis_smart_tailor/core/app/widgets/search_order_sheet.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/employee_item.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/organization_info_row.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/announcement_container.dart';

@RoutePage()
class ProfileOrganizationScreen extends StatefulWidget {
  const ProfileOrganizationScreen({super.key});

  @override
  State<ProfileOrganizationScreen> createState() => _ProfileOrganizationScreenState();
}

class _ProfileOrganizationScreenState extends State<ProfileOrganizationScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _labels = ['Текущие заказы', 'Сотрудники'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _labels.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
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
      body: Stack(
        children: [
          Column(
            children: [
              // const OrganizationInfoRow(
              //   isDateContainerVisible: false,
              // ),
              const SizedBox(height: 24),
              TabBarWidget(
                tabController: _tabController,
                labels: _labels,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildOrderListView(),
                    _buildEmployeeListView(),
                  ],
                ),
              )
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

  ListView _buildEmployeeListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: _buildEmployeeItemBuilder,
    );
  }

  Widget? _buildEmployeeItemBuilder(context, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
      child: const EmployeeItemContainer(),
    );
  }

  ListView _buildOrderListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
          child: const AnnouncementsContainer(
            price: '1000 сом',
          ),
        );
      },
    );
  }
}
