part of 'marketplace_bloc.dart';

@freezed
class MarketplaceState with _$MarketplaceState {
  const factory MarketplaceState({
    required final StateStatus stateStatus,
    required final List<EquipmentEntity> equipments,
    required final List<OrderEntity> orders,
    required final List<ServiceEntity> services,
  }) = _MarketplaceState;
}
