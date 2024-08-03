import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
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
      success: (value) {
        // AutoRouter.of(context).replace(
        //   ConfirmationRoute(email: value),
        // );
      },
      failure: (msg) {
        print(msg);
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
