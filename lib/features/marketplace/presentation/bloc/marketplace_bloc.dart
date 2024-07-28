import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/equipment_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/order_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/entitys/service_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_equipments_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace/domain/use_case/get_services_ude_case.dart';

part 'marketplace_event.dart';
part 'marketplace_state.dart';
part 'marketplace_bloc.freezed.dart';

@singleton
class MarketplaceBloc extends Bloc<MarketplaceEvent, MarketplaceState> {
  final GetEuipmentsUseCase getEuipmentsUseCase;
  final GetOrdersUseCase getOrdersUseCase;
  final GetServicesUseCase getServicesUseCase;
  MarketplaceBloc(
    this.getEuipmentsUseCase,
    this.getOrdersUseCase,
    this.getServicesUseCase,
  ) : super(
          const MarketplaceState(stateStatus: StateStatus.initial(), services: [], equipments: [], orders: []),
        ) {
    on<_GetOrders>(_getOrders);
    on<_GetEquipments>(_getEquipments);
    on<_GetServices>(_getServices);
    on<_GetAll>(_getAll);
  }

  Future<void> _getEquipments(
    _GetEquipments event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getEuipmentsUseCase.call(null);
      emit(state.copyWith(stateStatus: const StateStatus.success(), equipments: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getOrders(
    _GetOrders event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getOrdersUseCase.call(null);
      emit(state.copyWith(stateStatus: const StateStatus.success(), orders: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getServices(
    _GetServices event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getServicesUseCase.call(null);
      emit(state.copyWith(stateStatus: const StateStatus.success(), services: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getAll(
    _GetAll event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final results = await Future.wait([
        getServicesUseCase.call(null),
        getOrdersUseCase.call(null),
        getEuipmentsUseCase.call(null),
      ]);

      final services = results[0] as List<ServiceEntity>;
      final orders = results[1] as List<OrderEntity>;
      final equipments = results[2] as List<EquipmentEntity>;

      print(services);
      print(orders);
      print(equipments);

      emit(state.copyWith(
          stateStatus: const StateStatus.success(), services: services, equipments: equipments, orders: orders));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
