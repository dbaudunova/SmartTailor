import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/entitys/employee_entity.dart';
import 'package:neobis_smart_tailor/features/organization/pages/employee/domain/use_case/get_all_employees_use_case.dart';
import 'package:neobis_smart_tailor/features/organization/pages/organization/domain/entitys/organization_info_entity.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

@singleton
class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  final GetAllEmployeesUseCase getAllEmployeesUseCase;

  EmployeeBloc(
    this.getAllEmployeesUseCase,
  ) : super(
          const EmployeeState(
            stateStatus: StateStatus.initial(),
            employees: [],
          ),
        ) {
    on<_EmployeeEvent>(_getAllEmployees);
  }

  Future<void> _getAllEmployees(
    _EmployeeEvent event,
    Emitter<EmployeeState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final results = await getAllEmployeesUseCase.call();
      emit(
        state.copyWith(stateStatus: const StateStatus.success(), employees: results),
      );
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }
}

class _getAllEmployees {}
