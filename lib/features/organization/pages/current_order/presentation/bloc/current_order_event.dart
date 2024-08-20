part of 'current_order_bloc.dart';

@freezed
class CurrentOrderEvent with _$CurrentOrderEvent {
  const factory CurrentOrderEvent.getAllOrders() = _GetAllCurrentOrders;
  const factory CurrentOrderEvent.getDetailedOrder({required int id}) = _GetDetailsOrder;
  const factory CurrentOrderEvent.changeOrderStatus({required int id, required String value}) = _ChangeOrderStatus;
  const factory CurrentOrderEvent.completeOrder({required int id}) = _CompleteOrder;
}
