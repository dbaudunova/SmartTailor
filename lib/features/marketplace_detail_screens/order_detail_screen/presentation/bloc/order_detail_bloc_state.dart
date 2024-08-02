part of 'order_detail_bloc.dart';

@freezed
class OrderDetailState with _$OrderDetailState {
  const factory OrderDetailState({
    required final StateStatus stateStatus,
    required final OrderDetailEntity order,
  }) = _OrderDetailState;
}
