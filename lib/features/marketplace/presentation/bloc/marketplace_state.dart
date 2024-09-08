part of 'marketplace_bloc.dart';

@freezed
class MarketplaceState with _$MarketplaceState {
  const factory MarketplaceState({
    required final StateStatus stateStatus,
    required final List<GeneralEntity> equipments,
    required final List<GeneralEntity> orders,
    required final List<GeneralEntity> services,
    required final bool lastForOrders,
    required final bool lastForServices,
    required final bool lastForEquipment,
    required final List<AdvertisementEntity> searchedServices,
    required final List<AdvertisementEntity> searchedOrders,
    required final List<AdvertisementEntity> searchedEquipment,
  }) = _MarketplaceState;
}
