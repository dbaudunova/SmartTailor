import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/core/app/router/app_routes.dart';
import 'package:neobis_smart_tailor/core/app/widgets/alert_dialog_style.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/bloc/equipment_detail_bloc.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/presentation/equipment_detail_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class EquipmentDetailScreen extends StatelessWidget {
  final int id;
  const EquipmentDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<EquipmentDetailBloc>(),
      child: BlocListener<EquipmentDetailBloc, EquipmentDetailState>(
        listener: _listenerBloc,
        child: EquipmentDetailContent(
          id: id,
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, EquipmentDetailState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        if (val == true) {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialogStyle(
                title: 'Вы совершили покупку',
                content: 'Заказ отображается в вашем личном кабинете',
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
        print(msg);
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
