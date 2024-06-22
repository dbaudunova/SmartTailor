part of 'order_place_bloc.dart';

@freezed
class OrderPlaceEvent with _$OrderPlaceEvent {
  const factory OrderPlaceEvent.showFields({required String type}) = _ShowFields;
  const factory OrderPlaceEvent.addType({required String type}) = _AddType;
}
