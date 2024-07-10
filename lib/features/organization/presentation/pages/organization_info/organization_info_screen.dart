import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/employee_item.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/organization_info_row.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/announcements/announcement_container.dart';

@RoutePage()
class OrganizationInfoScreen extends StatefulWidget {
  const OrganizationInfoScreen({super.key});

  @override
  State<OrganizationInfoScreen> createState() => _OrganizationInfoScreenState();
}

class _OrganizationInfoScreenState extends State<OrganizationInfoScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _labels = ['Сотрудники', 'Должности', 'Заказы'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _labels.length,
      vsync: this,
    );

    _tabController.addListener(() {
      if (_tabController.index == 2) {
        AutoRouter.of(context).push(const OrderRoute());
      }
    });
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
      body: Column(
        children: [
          const OrganizationInfoRow(),
          const SizedBox(height: 16),
          TabBarWidget(
            tabController: _tabController,
            labels: _labels,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildEmployeeListView(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: _buildEmployeePositionTab(),
                ),
                _buildOrderListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListView _buildOrderListView() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
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
}
