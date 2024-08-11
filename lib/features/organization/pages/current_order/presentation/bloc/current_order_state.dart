part of 'current_order_bloc.dart';

@freezed
class CurrentOrderState with _$CurrentOrderState {
  const factory CurrentOrderState({
    required final StateStatus stateStatus,
    required final List<CurrentOrderEntity> orders,
    required final CurrentOrderEntity detailedOrder,
  }) = _CurrentOrderState;
}
