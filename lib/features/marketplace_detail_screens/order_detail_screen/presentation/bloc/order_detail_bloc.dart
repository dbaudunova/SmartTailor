import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/entitys/order_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/get_order_by_id_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/order_detail_screen/domain/use_case/request_to_execute_use_case%20copy.dart';

part 'order_detail_bloc_event.dart';
part 'order_detail_bloc_state.dart';
part 'order_detail_bloc.freezed.dart';

@singleton
class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final GetOrderByIdUseCase getOrderUseCase;
  final RequestToExecuteUseCase requestToExecuteUseCase;
  OrderDetailBloc(
    this.getOrderUseCase,
    this.requestToExecuteUseCase,
  ) : super(
          OrderDetailState(
            stateStatus: const StateStatus.initial(),
            order: OrderDetailEntity.initial(),
          ),
        ) {
    on<_GetOrder>(_getOrder);
    on<_RequestToExecute>(_requestToExecute);
  }

  Future<void> _getOrder(
    _GetOrder event,
    Emitter<OrderDetailState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getOrderUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(), order: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _requestToExecute(
    _RequestToExecute event,
    Emitter<OrderDetailState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await requestToExecuteUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success()));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
