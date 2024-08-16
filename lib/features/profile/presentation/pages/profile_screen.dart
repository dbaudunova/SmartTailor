import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/router/routes_path_const.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/core/app/widgets/app_bar_style.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/bloc/profile/profile_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/exit_alert.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/profile_button_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/subscribe_container_style.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/widgets/user_info.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  void initState() {
    final profileBloc = BlocProvider.of<ProfileBloc>(context);
    if (!profileBloc.state.isProfileLoaded) {
      profileBloc.add(const ProfileEvent.getProfileInfo());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarStyle(
        centerTitle: true,
        title: 'Профиль',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin).copyWith(
          top: AppProps.kSmallMargin,
        ),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBlocBuilder(),
                const SizedBox(height: AppProps.kTwentyMargin),
                _buildSubscripe(state),
                _buildProfileButton(context, 'Личные данные', const PersonalDataRoute()),
                const SizedBox(height: AppProps.kPageMargin),
                _buildProfileButton(context, 'Мои объявления', const MyAnnouncementsRoute()),
                const SizedBox(height: AppProps.kPageMargin),
                _buildProfileButton(context, 'Мои покупки', const MyPurchasesRoute()),
                if (state.profile?.hasSubscription == true) ...[
                  const SizedBox(height: AppProps.kPageMargin),
                  _buildProfileButton(context, 'История заказов', const OrderHistoryRoute()),
                  const SizedBox(height: AppProps.kPageMargin),
                  _buildProfileButton(context, 'Организация', const ProfileOrganizationRoute()),
                ],
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButtonWidget(
                    text: 'Выйти из профиля',
                    onTap: () {
                      _buildExitDialog(context);
                    },
                  ),
                ),
                const SizedBox(height: 16),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildSubscripe(ProfileState state) {
    print(state.profile?.hasSubscription);
    return state.stateStatus == const StateStatus.loading()
        ? const SizedBox.shrink()
        : state.profile?.hasSubscription == false
            ? Column(
                children: [
                  SubscribeContainerStyle(
                    buttonTitle: 'Отправить запрос',
                    onButtonPressed: () {
                      context.read<ProfileBloc>().add(const ProfileEvent.sendSubscription());
                      // _buildShowDialog(context);
                    },
                  ),
                  const SizedBox(height: AppProps.kPageMargin)
                ],
              )
            : const SizedBox.shrink();
  }

  BlocBuilder<ProfileBloc, ProfileState> _buildBlocBuilder() {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.stateStatus == const StateStatus.loading()) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.stateStatus == StateStatus.failure(message: '${state.stateStatus}')) {
          return AppSnackBar.show(context: context, titleText: 'Не удалось загрузить данные', error: true);
        }
        if (state.stateStatus == const StateStatus.success()) {
          final isSubscribed = state.profile?.hasSubscription;
          return UserInfo(
            profileEntity: state.profile,
              secondRowText: isSubscribed == true ? 'Подписка оформлена' : 'Отправьте запрос на подписку',
              onIconPressed: () {
              AutoRouter.of(context).push(const NotificationRoute());
            },
          );
        }
        return const Center(
          child: Text('Что-то пошло не так'),
        );
      },
    );
  }

  Widget _buildProfileButton(BuildContext context, String title, PageRouteInfo route) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ProfileButtonStyle(
        title: title,
        onPressed: () {
          AutoRouter.of(context).push(route);
        },
      ),
    );
  }

  void _buildExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ExitAlert(
          title: 'Вы действительно хотите выйти?',
          confirmButton: () {
            context.read<ProfileBloc>().add(const ProfileEvent.signOut());
            AutoRouter.of(context).replaceNamed(RoutesPaths.enter);
          },
          cancelButton: () {
            AutoRouter.of(context).maybePop();
          },
        );
      },
    );
  }

  void _buildShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: _alertDialogBuilder,
    );
  }

  Widget _alertDialogBuilder(context) {
    return AlertDialogStyle(
      title: 'Ура!',
      content: 'Подписка уже в пути!',
      buttonText: 'Понятно',
      onButtonPressed: () {
        AutoRouter.of(context).maybePop();
      },
    );
  }
}
