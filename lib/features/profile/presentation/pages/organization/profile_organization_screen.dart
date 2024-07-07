import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/features/marketplace/presentation/pages/widgets/tab_bar_widget.dart';

@RoutePage()
class ProfileOrganizationScreen extends StatefulWidget {
  const ProfileOrganizationScreen({super.key});

  @override
  State<ProfileOrganizationScreen> createState() =>
      _ProfileOrganizationScreenState();
}

class _ProfileOrganizationScreenState extends State<ProfileOrganizationScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _labels = ['Текущие заказы', 'Список сотрудников'];

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
      body: Column(
        children: [
          Row(
            children: [
              _buildOrganizationInfo(),
            ],
          ),
          const SizedBox(height: 24),
          TabBarWidget(
            tabController: _tabController,
            labels: _labels,
          ),
        ],
      ),
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
              width: 70,
              height: 70,
              child: CachedNetworkImage(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_640.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Название организации',
                style: AppTextStyle.s20w400Orange.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Мониторинг и управление\nшвейным производством',
                style: AppTextStyle.text14.copyWith(
                  color: AppColors.greyText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
