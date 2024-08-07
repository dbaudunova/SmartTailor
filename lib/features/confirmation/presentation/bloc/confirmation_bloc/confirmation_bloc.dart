import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/confirmation/data/models/activation_model/confirmation_model.dart';
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/confirmation_use_case.dart';
import 'package:neobis_smart_tailor/features/confirmation/domain/useCase/resend_pin_use_case%20copy.dart';

part 'confirmation_event.dart';
part 'confirmation_state.dart';
part 'confirmation_bloc.freezed.dart';

@singleton
class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  final ConfirmationUseCase confirmationUseCse;
  final ResendPinUseCase resendPinUseCase;

  ConfirmationBloc(
    this.confirmationUseCse,
    this.resendPinUseCase,
  ) : super(
          const ConfirmationState(
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_SendPin>(_sendPin);
    on<_ResendPinToEmail>(_resendPinToEmail);
  }

  Future<void> _resendPinToEmail(
    _ResendPinToEmail event,
    Emitter<ConfirmationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await resendPinUseCase.call(event.email);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(SuccessType.repeatCode)));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
          stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _sendPin(
    _SendPin event,
    Emitter<ConfirmationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    final confirmationModel =
        ConfirmationModel(email: event.email, code: event.pinCode);
    try {
      await confirmationUseCse.call(
        confirmationModel,
      );
      emit(state.copyWith(
          stateStatus: const StateStatus.success(SuccessType.login)));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
          stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}

enum SuccessType { repeatCode, login }
