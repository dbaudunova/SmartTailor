part of 'order_place_bloc.dart';

@freezed
class OrderPlaceState with _$OrderPlaceState {
  const factory OrderPlaceState(
      {required final StateStatus stateStatus,
      required final OrderPlaceModel orderPlaceModel,
      required final bool? showFields}) = _OrderPlaceState;
}
