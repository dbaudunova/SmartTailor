import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_smart_tailor/features/registration/domain/useCase/registration_use_case.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@singleton
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationUseCase registrationUseCase;

  RegistrationBloc({required this.registrationUseCase})
      : super(
          RegistrationState(
              stateStatus: const StateStatus.initial(),
              registrationModel: RegistrationModel.initial(),
              isButtonAvailable: false),
        ) {
    on<_Registration>(_registration);
    on<_AddSurname>(_addSurname);
    on<_AddName>(_addName);
    on<_AddFatherName>(_addFatherName);
    on<_AddEmail>(_addEmail);
    on<_AddPhone>(_addPhone);
    on<_Reset>(_reset);
  }

  void _reset(
    _Reset event,
    Emitter<RegistrationState> emit,
  ) {
    emit(RegistrationState(
      stateStatus: const StateStatus.initial(),
      registrationModel: RegistrationModel.initial(),
      isButtonAvailable: false,
    ));
  }

  void _addSurname(
    _AddSurname event,
    Emitter<RegistrationState> emit,
  ) {
    var surname = event.surname;
    emit(state.copyWith(registrationModel: state.registrationModel.copyWith(surname: surname)));
  }

  void _addName(
    _AddName event,
    Emitter<RegistrationState> emit,
  ) {
    var name = event.name;
    emit(state.copyWith(registrationModel: state.registrationModel.copyWith(name: name)));
  }

  void _addFatherName(
    _AddFatherName event,
    Emitter<RegistrationState> emit,
  ) {
    var fatherName = event.fatherName;
    emit(state.copyWith(registrationModel: state.registrationModel.copyWith(fatherName: fatherName)));
  }

  void _addEmail(
    _AddEmail event,
    Emitter<RegistrationState> emit,
  ) {
    var email = event.email;
    emit(state.copyWith(registrationModel: state.registrationModel.copyWith(email: email)));
  }

  void _addPhone(
    _AddPhone event,
    Emitter<RegistrationState> emit,
  ) {
    var phone = event.phone;
    emit(state.copyWith(registrationModel: state.registrationModel.copyWith(phone: phone)));
  }

  Future<void> _registration(
    _Registration event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    final registrationModel = event.registrationModel;
    final result = await registrationUseCase.call(
      registrationModel,
    );
    result.fold((l) {
      emit(
        state.copyWith(
          stateStatus: StateStatus.failure(
            message: l.message ?? l.toString(),
          ),
        ),
      );
    }, (r) {
      if (r == 200) {
        emit(state.copyWith(stateStatus: const StateStatus.success()));
      } else {
        emit(
          state.copyWith(
            stateStatus: StateStatus.failure(message: 'Неизвестный код статуса: $r'),
          ),
        );
      }
    });
  }
}



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
  

