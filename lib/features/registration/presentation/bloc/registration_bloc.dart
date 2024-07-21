import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationUseCase registrationUseCase;

  RegistrationBloc({required this.registrationUseCase})
      : super(
          RegistrationState(
            stateStatus: const StateStatus.initial(),
          ),
        ) {
    on<_Registration>(_registration);
    on<_Reset>(_reset);
    // on<_AddEmail>(_addEmail);
  }

  // void _addEmail(
  //   _AddEmail event,
  //   Emitter<RegistrationState> emit,
  // ) {
  //   var email = event.email;
  //   emit(
  //     state.copyWith(
  //       registrationModel: state.registrationModel.copyWith(
  //         email: email,
  //       ),
  //     ),
  //   );
  // }

  Future<void> _registration(
    _Registration event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    final registrationModel = event.registrationModel;
    try {
      await registrationUseCase.call(
        registrationModel,
      );
      emit(state.copyWith(stateStatus: const StateStatus.success()));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  void _reset(
    _Reset event,
    Emitter<RegistrationState> emit,
  ) {
    emit(RegistrationState(
      stateStatus: const StateStatus.initial(),
    ));
  }
}


  // Future<void> _registration(
  //   _Registration event,
  //   Emitter<RegistrationState> emit,
  // ) async {
  //   emit(state.copyWith(stateStatus: const StateStatus.loading()));
  //   final registrationModel = event.registrationModel;
  //   await registrationUseCase.call(
  //     registrationModel,
  //   );
  //   emit(state.copyWith(stateStatus: const StateStatus.success()));
  // }
