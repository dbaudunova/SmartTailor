import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final SignOutUseCase signOutUseCase;

  ProfileBloc({required this.signOutUseCase})
      : super(
          const ProfileState(
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_SignOut>(_signOut);
  }

  Future<void> _signOut(
    _SignOut event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await signOutUseCase.call(null);

      emit(state.copyWith(stateStatus: const StateStatus.success()));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
    print(state.stateStatus);
  }
}
