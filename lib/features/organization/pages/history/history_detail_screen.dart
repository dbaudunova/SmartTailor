import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/history_detail_content.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

@RoutePage()
class HistoryDetailScreen extends StatelessWidget {
  final int id;
  const HistoryDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<HistoryBloc>(),
      child: BlocListener<HistoryBloc, HistoryState>(
        listener: _listenerBloc,
        child: HistoryDetailContent(id: id),
      ),
    );
  }

  void _listenerBloc(BuildContext context, HistoryState state) {
    state.stateStatus.whenOrNull(
      success: (value) {
        // _showCustomDialog(
        //   context: context,
        //   contentText:
        //       'Созданные должности будут находиться ниже по Иерархии, и им нельзя выдать права доступа, которые недоступны человеку создающему новую роль',
        //   buttonText: 'Понятно',
        //   onButtonPressed: () {
        //     _showCustomDialog(
        //       context: context,
        //       contentText: 'Выдача прав доступа сохранена!',
        //       buttonText: 'Понятно',
        //       onButtonPressed: () {
        //         AutoRouter.of(context).pop();
        //       },
        //     );
        //   },
        // );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }
}
