import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart';

part 'confirmation_event.dart';
part 'confirmation_state.dart';
part 'confirmation_bloc.freezed.dart';

@singleton
class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  final RegistrationUseCase registrationUseCase;

  ConfirmationBloc({required this.registrationUseCase}) : super(const ConfirmationState.buttonInactive(
            // stateStatus: const StateStatus.initial(), confirmationModel: ConfirmationModel.initial()

            )) {
    // on<_Registration>(_validationPassword);
    // on<ValidationEmail>(_validationEmail);
    // on<ValidationLogin>(_validationLogin);
    // on<ValidationPasswordRepeat>(_validationPasswordRepeat);

    // on<_RepeatCode>(_repeatCode);
    on<_Activate>((event, emit) => emit(const ConfirmationState.buttonActive()));
    on<_Deactivate>((event, emit) => emit(const ConfirmationState.buttonInactive()));
  }

  // Future<void> _repeatCode(
  //   _RepeatCode event,
  //   Emitter<ConfirmationState> emit,
  // ) async {
  //   emit(
  //     state.copyWith(
  //       stateStatus: const StateStatus.initial(),
  //       confirmationModel: ConfirmationModel.initial(),
  //     ),
  //   );

  //   final buttonStatus = event.repeatCode;
  //   if (buttonStatus == false) {}
  // }

  // Future<void> _registration(
  //   _Registration event,
  //   Emitter<RegistrationState> emit,
  // ) async {
  //   final registrationModel = event.registrationModel;
  //   final result = await registrationUseCase.call(
  //     registrationModel,
  //   );
  //   result.fold((l) {
  //     emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
  //   }, (r) {
  //     emit(state.copyWith(stateStatus: const StateStatus.success()));
  //   });
  // }

  // void _validationPasswordRepeat(
  //   ValidationPasswordRepeat event,
  //   Emitter<RegistrationState> emit,
  // ) {
  //   final password = event.passwordRepeat;
  //   String firstPassword = state.validationModel.password;
  //   final similar = passwordsValid(
  //     password,
  //     firstPassword,
  //   );
  //   print(password);
  //   print(firstPassword);
  //   print(similar);
  //   emit(
  //     RegistrationState(
  //       state.validationModel.copyWith(
  //         passwordSimilar: similar,
  //         passwordRepeat: password,
  //       ),
  //     ),
  //   );
  // }

  // void _validationLogin(
  //   ValidationLogin event,
  //   Emitter<RegistrationState> emit,
  // ) {
  //   final login = event.login;
  //   final boolLogin = login.isNotEmpty;
  //   print(login);
  //   print(boolLogin);

  //   emit(
  //     RegistrationState(
  //       state.validationModel.copyWith(
  //         login: boolLogin,
  //         loginString: login,
  //       ),
  //     ),
  //   );
  // }

  // void _validationEmail(
  //   ValidationEmail event,
  //   Emitter<RegistrationState> emit,
  // ) {
  //   final email = event.email;
  //   final boolEmail = emailValidation(
  //     email,
  //   );
  //   print(email);
  //   print(boolEmail);

  //   emit(
  //     RegistrationState(
  //       state.validationModel.copyWith(
  //         emailString: email,
  //         email: boolEmail,
  //       ),
  //     ),
  //   );
  // }

  // void _validationPassword(
  //   ValidationPassword event,
  //   Emitter<RegistrationState> emit,
  // ) {
  //   final password = event.password;
  //   final specChar = hasSpecialChar(
  //     password,
  //   );
  //   final lenght = isValidLength(
  //     password,
  //   );
  //   final number = hasDigit(
  //     password,
  //   );
  //   final upperCase = hasAlphabetic(
  //     password,
  //   );
  //   print(specChar);
  //   print(lenght);
  //   print(number);
  //   print(upperCase);
  //   print(password);
  //   emit(
  //     RegistrationState(
  //       state.validationModel.copyWith(
  //         lenght: lenght,
  //         number: number,
  //         specChar: specChar,
  //         upperCase: upperCase,
  //         password: password,
  //       ),
  //     ),
  //   );
}
