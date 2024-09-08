import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/entitys/service_detail_entity.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/get_service_by_id_use_case.dart';
import 'package:neobis_smart_tailor/features/marketplace_detail_screens/service_detail_screen/domain/use_case/send_request_to_service_use_case.dart';

part 'service_detail_bloc_event.dart';
part 'service_detail_bloc_state.dart';
part 'service_detail_bloc.freezed.dart';

@injectable
class ServiceDetailBloc extends Bloc<ServiceDetailEvent, ServiceDetailState> {
  final GetServiceByIdUseCase getServiceUseCase;
  final SendRequestToServiceUseCase sendRequestToServiceUseCase;
  ServiceDetailBloc(
    this.getServiceUseCase,
    this.sendRequestToServiceUseCase,
  ) : super(
          const ServiceDetailState(
            stateStatus: StateStatus.initial(),
            service: null,
          ),
        ) {
    on<_GetService>(_getServices);
    on<_SendRequestToService>(_sendRequestToService);
  }
  Future<void> _sendRequestToService(
    _SendRequestToService event,
    Emitter<ServiceDetailState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await sendRequestToServiceUseCase.call(id: event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(true)));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getServices(
    _GetService event,
    Emitter<ServiceDetailState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getServiceUseCase.call(event.id!);
      emit(state.copyWith(stateStatus: const StateStatus.success(), service: result));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
