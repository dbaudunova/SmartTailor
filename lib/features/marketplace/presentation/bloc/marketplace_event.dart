part of 'marketplace_bloc.dart';

@freezed
class MarketplaceEvent with _$MarketplaceEvent {
  const factory MarketplaceEvent.getOrders() = _GetOrders;
  const factory MarketplaceEvent.getEquipments() = _GetEquipments;
  const factory MarketplaceEvent.getServices() = _GetServices;
  const factory MarketplaceEvent.getAll() = _GetAll;
  const factory MarketplaceEvent.loadMoreOrders() = _LoadMoreOrders;
  const factory MarketplaceEvent.loadMoreEquipments() = _LoadMoreEquipments;
  const factory MarketplaceEvent.loadMoreServices() = _LoadMoreServices;
  // const factory MarketplaceEvent.ordersPageRequested(int pageKey) = _OrdersPageRequested;
  // const factory MarketplaceEvent.equipmentsPageRequested(int pageKey) = _EquipmentsPageRequested;
  // const factory MarketplaceEvent.servicesPageRequested(int pageKey) = _ServicesPageRequested;
}
