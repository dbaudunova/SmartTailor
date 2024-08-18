import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/equipment_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/order_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/service_detailed_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_equipment_detailed_by_id_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_detailed_by_id_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_service_detailed_by_id_use_case.dart';

part 'announcement_event.dart';

part 'announcement_state.dart';

part 'announcement_bloc.freezed.dart';

@injectable
class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  final GetOrderDetailedByIdUseCase getOrderDetailedByIdUseCase;
  final GetEquipmentDetailedByIdUseCase getEquipmentDetailedByIdUseCase;
  final GetServiceDetailedByIdUseCase getServiceDetailedByIdUseCase;

  AnnouncementBloc(
    this.getOrderDetailedByIdUseCase,
    this.getServiceDetailedByIdUseCase,
    this.getEquipmentDetailedByIdUseCase,
  ) : super(
          const AnnouncementState(
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_GetOrderDetailed>(_getOrderDetailed);
    on<_GetEquipmentDetailed>(_getEquipmentDetailed);
    on<_GetServiceDetailed>(_getServiceDetailed);
  }

  Future<void> _getOrderDetailed(
    _GetOrderDetailed event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getOrderDetailedByIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(false), detailedOrder: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getEquipmentDetailed(
    _GetEquipmentDetailed event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getEquipmentDetailedByIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(false), detailedEquipment: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getServiceDetailed(
    _GetServiceDetailed event,
    Emitter<AnnouncementState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getServiceDetailedByIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(false), detailedService: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
