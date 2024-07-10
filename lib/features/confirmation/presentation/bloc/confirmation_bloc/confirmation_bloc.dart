import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';

part 'confirmation_event.dart';
part 'confirmation_state.dart';
part 'confirmation_bloc.freezed.dart';

@singleton
class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  ConfirmationBloc() : super(const ConfirmationState(stateStatus: StateStatus.initial())) {
    on<_SendPin>(_sendPin);
    on<_AddPin>(_addPin);
  }

  Future<void> _sendPin(
    _SendPin event,
    Emitter<ConfirmationState> emit,
  ) async {
    var pinCode = int.parse(event.pinCode);
    emit(ConfirmationState(stateStatus: const StateStatus.success(), pinCode: pinCode));
  }

  void _addPin(
    _AddPin event,
    Emitter<ConfirmationState> emit,
  ) {
    var pinCode = int.parse(event.pinCode);
    emit(ConfirmationState(stateStatus: const StateStatus.success(), pinCode: pinCode));
    print(state.pinCode);
  }
}
