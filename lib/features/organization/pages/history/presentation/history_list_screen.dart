import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_smart_tailor/core/app/io_ui.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/bloc/history_bloc.dart';
import 'package:neobis_smart_tailor/features/organization/pages/history/presentation/history_list_content.dart';
import 'package:neobis_smart_tailor/injection/injection.dart';

class HistoryListScreen extends StatelessWidget {
  const HistoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<HistoryBloc>(),
      child: BlocListener<HistoryBloc, HistoryState>(
        listener: _listenerBloc,
        child: const HistoryListContent(),
      ),
    );
  }

  void _listenerBloc(BuildContext context, HistoryState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //       content: Text(
        //     'Готово',
        //     style: AppTextStyle.s12w400,
        //     textAlign: TextAlign.center,
        //   )),
        // );
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg!, error: true);
      },
    );
  }
}
