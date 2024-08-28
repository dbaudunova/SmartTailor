part of 'current_order_bloc.dart';

@freezed
class CurrentOrderState with _$CurrentOrderState {
  const factory CurrentOrderState(
      {required final StateStatus stateStatus,
      required final OrganizationListEntity orders,
      required final CurrentDetailOrderEntity detailedOrder,
      required final OrderStatus status}) = _CurrentOrderState;
}
