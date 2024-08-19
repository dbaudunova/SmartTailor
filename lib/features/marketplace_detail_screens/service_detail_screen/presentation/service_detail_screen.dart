import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/bloc/service_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/presentation/service_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class ServiceDetailScreen extends StatelessWidget {
  final int id;
  const ServiceDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<ServiceDetailBloc>(),
      child: BlocListener<ServiceDetailBloc, ServiceDetailState>(
        listener: _listenerBloc,
        child: ServiceDateilContent(
          id: id,
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, ServiceDetailState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        if (val == true) {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialogStyle(
                title: 'Вы откликнулись на услугу',
                content: 'Услуга отображается в вашем личном кабинете',
                buttonText: 'Понятно',
                onButtonPressed: () {
                  Navigator.of(context).pop();
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    AutoRouter.of(context).pushAndPopUntil(
                      const MarketplaceRoute(),
                      predicate: (route) => false,
                    );
                  });
                },
              );
            },
          );
        }
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
