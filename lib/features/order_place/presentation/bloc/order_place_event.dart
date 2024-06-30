part of 'order_place_bloc.dart';

@freezed
class OrderPlaceEvent with _$OrderPlaceEvent {
  const factory OrderPlaceEvent.showFields({required String fieldType}) = _ShowFields;
  const factory OrderPlaceEvent.addType({required String type}) = _AddType;
  const factory OrderPlaceEvent.addPhotos({required List<File> photos}) = _AddPhotos;
  const factory OrderPlaceEvent.removePhoto({required String photo}) = _RemovePhoto;
  const factory OrderPlaceEvent.addSize({required String size}) = _AddSize;
  const factory OrderPlaceEvent.removeSize({required String size}) = _RemoveSize;
  const factory OrderPlaceEvent.addDate({required DateTime date}) = _AddDate;
}
