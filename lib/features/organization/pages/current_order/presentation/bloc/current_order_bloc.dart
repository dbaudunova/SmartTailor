import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_detailed_order_use_case.dart';

part 'current_order_event.dart';
part 'current_order_state.dart';
part 'current_order_bloc.freezed.dart';

@singleton
class CurrentOrderBloc extends Bloc<CurrentOrderEvent, CurrentOrderState> {
  final GetAllOrdersUseCase getAllOrdersUseCase;
  final GetCurrentDetailOrderUseCase getCurrentDetailOrderUseCase;

  CurrentOrderBloc(
    this.getAllOrdersUseCase,
    this.getCurrentDetailOrderUseCase,
  ) : super(
          CurrentOrderState(
            stateStatus: const StateStatus.initial(),
            orders: OrganizationListEntity.initial(),
            detailedOrder: CurrentDetailOrderEntity.initial(),
          ),
        ) {
    on<_GetAllCurrentOrders>(_getAllOrders);
    on<_GetDetailsOrder>(_getDetailedOrder);
  }

  Future<void> _getAllOrders(
    _GetAllCurrentOrders event,
    Emitter<CurrentOrderState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getAllOrdersUseCase.call();
      emit(
        state.copyWith(stateStatus: const StateStatus.success(), orders: result),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _getDetailedOrder(
    _GetDetailsOrder event,
    Emitter<CurrentOrderState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getCurrentDetailOrderUseCase.call(id: event.id);
      print(result);
      emit(
        state.copyWith(stateStatus: const StateStatus.success(), detailedOrder: result),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }
}
