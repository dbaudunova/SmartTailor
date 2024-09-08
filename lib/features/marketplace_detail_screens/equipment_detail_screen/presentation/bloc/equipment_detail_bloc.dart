import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/entitys/equipment_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/buy_equipment_use_case%20copy.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/equipment_detail_screen/domain/use_case/get_equipmentby_id_use_case.dart';

part 'equipment_detail_bloc_event.dart';
part 'equipment_detail_bloc_state.dart';
part 'equipment_detail_bloc.freezed.dart';

@injectable
class EquipmentDetailBloc extends Bloc<EquipmentDetailEvent, EquipmentDetailState> {
  final GetEuipmentByIdUseCase getEuipmentUseCase;
  final BuyEquipmentIdUseCase buyEquipmentIdUseCase;
  EquipmentDetailBloc(
    this.getEuipmentUseCase,
    this.buyEquipmentIdUseCase,
  ) : super(
          const EquipmentDetailState(
            stateStatus: StateStatus.initial(),
            equipment: null,
          ),
        ) {
    on<_GetEquipment>(_getEquipments);
    on<_BuyEquipment>(_buyEquipment);
  }

  Future<void> _getEquipments(
    _GetEquipment event,
    Emitter<EquipmentDetailState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getEuipmentUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(), equipment: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _buyEquipment(
    _BuyEquipment event,
    Emitter<EquipmentDetailState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await buyEquipmentIdUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(true)));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage ?? 'Произошла ошибка')));
    }
  }
}
