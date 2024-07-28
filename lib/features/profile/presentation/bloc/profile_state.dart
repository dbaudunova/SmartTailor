part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required final StateStatus stateStatus,
    final ProfileEntity? profile,
  }) = _ProfileState;
}
