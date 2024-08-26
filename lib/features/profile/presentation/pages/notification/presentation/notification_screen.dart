import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/bloc/notification_bloc.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/presentation/notification_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<NotificationBloc>(),
      child: BlocListener<NotificationBloc, NotificationState>(
        listener: _listenerBloc,
        child: const NotificationContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, NotificationState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        if (val == true) {
          // showDialog(
          //   context: context,
          //   builder: (context) {
          //     return AlertDialogStyle(
          //       title: 'Ура!',
          //       content: 'Вы успешно создали заказ!',
          //       buttonText: 'Понятно',
          //       onButtonPressed: () {
          //         Navigator.of(context).pop();
          //         WidgetsBinding.instance.addPostFrameCallback((_) {
          //           AutoRouter.of(context).pushAndPopUntil(
          //             const MarketplaceRoute(),
          //             predicate: (route) => false,
          //           );
          //         });
          //       },
          //     );
          //   },
          // );
        }
      },
      failure: (msg) {
        // AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
