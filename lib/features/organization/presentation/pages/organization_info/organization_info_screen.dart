import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/tab_bar_widget.dart';
import 'package:neobis_smart_tailor/features/organization/presentation/widgets/organization_info/organization_info.dart';
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
          _buildOrganizationInfo(),
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
                ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16)
                          .copyWith(bottom: 12),
                      child: AnnouncementsContainer(
                        onTap: () {},
                        price: '1000 сом',
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
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
          bottom: 16,
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
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16)
                  .copyWith(bottom: 12),
              child: EmployeeItemContainer(
                onTap: () {
                  AutoRouter.of(context).push(const EmployeeDetailRoute());
                },
              ),
            );
          },
        ),
        Positioned(
          bottom: 16,
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

  Padding _buildOrganizationInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 92,
              height: 92,
              child: CachedNetworkImage(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_640.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Название организации',
                style: AppTextStyle.s20w400Orange.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Мониторинг и управление\nшвейным производством',
                style: AppTextStyle.s12w400.copyWith(
                  color: AppColors.greyText,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.buttonUnavailableBack,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Создан 10 апреля 2024',
                  style: AppTextStyle.s12w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
