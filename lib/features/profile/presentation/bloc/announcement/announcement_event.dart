part of 'announcement_bloc.dart';

@freezed
class AnnouncementEvent with _$AnnouncementEvent {
  const factory AnnouncementEvent.getOrders() = _GetOrders;
  const factory AnnouncementEvent.getEquipments() = _GetEquipments;
  const factory AnnouncementEvent.getServices() = _GetServices;
  const factory AnnouncementEvent.getAll() = _GetAll;
  const factory AnnouncementEvent.loadMoreOrders() = _LoadMoreOrders;
  const factory AnnouncementEvent.loadMoreEquipments() = _LoadMoreEquipments;
  const factory AnnouncementEvent.loadMoreServices() = _LoadMoreServices;
  const factory AnnouncementEvent.getOrderDetailed({int? id}) = _GetOrderDetailed;
  const factory AnnouncementEvent.getEquipmentDetailed({int? id}) = _GetEquipmentDetailed;
  const factory AnnouncementEvent.getServiceDetailed({int? id}) = _GetServiceDetailed;
}
