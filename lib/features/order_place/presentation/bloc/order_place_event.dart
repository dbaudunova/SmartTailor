part of 'order_place_bloc.dart';

@freezed
class OrderPlaceEvent with _$OrderPlaceEvent {
  const factory OrderPlaceEvent.setType({required OrderType type}) = _SetType;
  const factory OrderPlaceEvent.createOrder({required OrderPlaceModel orderPlaceModel}) = _CreateOrder;
  const factory OrderPlaceEvent.addPhotos({required List<File> photos}) = _AddPhotos;
  const factory OrderPlaceEvent.removePhoto({required File photo}) = _RemovePhoto;
  const factory OrderPlaceEvent.addItem({required Item item}) = _AddItem;
  const factory OrderPlaceEvent.updateQuantity({required Item item}) = _UpdateQuantity;
  const factory OrderPlaceEvent.removeItem({required Item item}) = _RemoveItem;
  const factory OrderPlaceEvent.addDate({required DateTime dateOfExecution}) = _AddDate;
  const factory OrderPlaceEvent.resetState() = _ResetState;
}
