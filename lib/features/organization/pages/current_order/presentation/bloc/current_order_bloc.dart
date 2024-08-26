import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/data/models/order_status_enum.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/current_detail_order_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/entitys/organization_list_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/change_order_status_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/complete_order_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_all_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_cancel_order_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/current_order/domain/use_case/get_detailed_order_use_case.dart';

part 'current_order_event.dart';
part 'current_order_state.dart';
part 'current_order_bloc.freezed.dart';

@injectable
class CurrentOrderBloc extends Bloc<CurrentOrderEvent, CurrentOrderState> {
  final GetAllOrdersUseCase getAllOrdersUseCase;
  final GetCurrentDetailOrderUseCase getCurrentDetailOrderUseCase;
  final ChangeOrderStatusUseCase changeOrderStatusUseCase;
  final CompleteOrderUseCase completeOrderUseCase;
  final GetCancelOrderUseCase cancelOrderUseCase;

  CurrentOrderBloc(
    this.getAllOrdersUseCase,
    this.getCurrentDetailOrderUseCase,
    this.changeOrderStatusUseCase,
    this.completeOrderUseCase,
    this.cancelOrderUseCase,
  ) : super(
          CurrentOrderState(
              stateStatus: const StateStatus.initial(),
              orders: OrganizationListEntity.initial(),
              detailedOrder: CurrentDetailOrderEntity.initial(),
              status: OrderStatus.waiting),
        ) {
    on<_GetAllCurrentOrders>(_getAllOrders);
    on<_GetDetailsOrder>(_getDetailedOrder);
    on<_ChangeOrderStatus>(_changeOrderStatus);
    on<_CompleteOrder>(_completeOrder);
    on<_CancelOrder>(_cancelOrder);
  }

  Future<void> _cancelOrder(
    _CancelOrder event,
    Emitter<CurrentOrderState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await cancelOrderUseCase.call(id: event.id);
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
        ),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _completeOrder(
    _CompleteOrder event,
    Emitter<CurrentOrderState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await completeOrderUseCase.call(id: event.id);
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
        ),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _changeOrderStatus(
    _ChangeOrderStatus event,
    Emitter<CurrentOrderState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await changeOrderStatusUseCase.call(id: event.id, value: event.value);
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(true),
        ),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
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
      emit(
        state.copyWith(stateStatus: const StateStatus.success(), detailedOrder: result, status: result.status!),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }
}
