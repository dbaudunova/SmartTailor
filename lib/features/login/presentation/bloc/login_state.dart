part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({required final StateStatus stateStatus}) = _LoginState;
}
