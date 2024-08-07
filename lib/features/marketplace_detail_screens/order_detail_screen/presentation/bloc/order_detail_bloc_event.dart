part of 'order_detail_bloc.dart';

@freezed
class OrderDetailEvent with _$OrderDetailEvent {
  const factory OrderDetailEvent.getOrder({int? id}) = _GetOrder;
  const factory OrderDetailEvent.requestToExecute({int? id}) =
      _RequestToExecute;
}
