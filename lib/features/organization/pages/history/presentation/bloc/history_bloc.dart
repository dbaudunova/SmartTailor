import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/my_history_entity.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

@singleton
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  // final GetAllOrdersUseCase getAllOrdersUseCase;

  HistoryBloc(
      // this.getAllOrdersUseCase,
      )
      : super(
          const HistoryState(stateStatus: StateStatus.initial(), history: [], isLast: false, totalCount: 0),
        ) {
    on<_GetHistory>(_getHistory);
    // on<_GetDetailsOrder>(_getDetailedOrder);
  }

  Future<void> _getHistory(
    _GetHistory event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      // final result = await getAllOrdersUseCase.call();
      // emit(
      //   // state.copyWith(stateStatus: const StateStatus.success(), orders: result),
      // );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  // Future<void> _getDetailedOrder(
  //   _GetDetailsOrder event,
  //   Emitter<CurrentOrderState> emit,
  // ) async {
  //   emit(state.copyWith(stateStatus: const StateStatus.loading()));
  //   try {
  //     final results = await getAllOrdersUseCase.call();
  //     emit(
  //       state.copyWith(stateStatus: const StateStatus.success(), orders: results),
  //     );
  //   } catch (e) {
  //     final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
  //     emit(state.copyWith(
  //       stateStatus: StateStatus.failure(message: errorMessage!),
  //     ));
  //   }
  // }
}
