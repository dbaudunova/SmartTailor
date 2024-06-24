part of 'order_place_bloc.dart';

@freezed
class OrderPlaceEvent with _$OrderPlaceEvent {
  const factory OrderPlaceEvent.showFields({required String fieldType}) = _ShowFields;
  const factory OrderPlaceEvent.addType({required String type}) = _AddType;
  const factory OrderPlaceEvent.addPhotos({required List<File> photos}) = _AddPhotos;
}
