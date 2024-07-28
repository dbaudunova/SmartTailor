part of 'marketplace_bloc.dart';

@freezed
class MarketplaceEvent with _$MarketplaceEvent {
  const factory MarketplaceEvent.getOrders() = _GetOrders;
  const factory MarketplaceEvent.getEquipmetns() = _GetEquipments;
  const factory MarketplaceEvent.getServices() = _GetServices;
  const factory MarketplaceEvent.getAll() = _GetAll;
}
