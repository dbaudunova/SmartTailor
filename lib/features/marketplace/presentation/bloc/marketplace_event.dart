part of 'marketplace_bloc.dart';

@freezed
class MarketplaceEvent with _$MarketplaceEvent {
  const factory MarketplaceEvent.loadOrders({required int page}) = _LoadOrders;
  const factory MarketplaceEvent.loadEquipments({required int page}) = _LoadEquipments;
  const factory MarketplaceEvent.loadServices({required int page}) = _LoadServices;
  const factory MarketplaceEvent.searchOrder({required String query}) = _SearchOrder;
  const factory MarketplaceEvent.searchEquipmnet({required String query}) = _SearchEquipment;
  const factory MarketplaceEvent.searchService({required String query}) = _SearchService;
}
