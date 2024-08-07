import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final SignOutUseCase signOutUseCase;
  final GetProfileInfoUseCase getProfileInfoUseCase;
  final EditProfileInfoUseCase editProfileInfoUseCase;
  final SendSubscriptionUseCase sendSubscriptionUseCase;
  final UploadImageUseCase uploadImageUseCase;

  ProfileBloc({
    required this.sendSubscriptionUseCase,
    required this.signOutUseCase,
    required this.getProfileInfoUseCase,
    required this.editProfileInfoUseCase,
    required this.uploadImageUseCase,
  }) : super(
          const ProfileState(
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_SignOut>(_signOut);
    on<_GetProfileInfo>(_getProfileInfo);
    on<_EditProfileInfo>(_editProfileInfo);
    on<_UploadImage>(_uploadImage);

    on<_SendSubscription>(_sendSubscription);
  }

  Future<void> _sendSubscription(
    _SendSubscription event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await sendSubscriptionUseCase.call(null);

      emit(state.copyWith(stateStatus: const StateStatus.success()));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
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

  Future<void> _getProfileInfo(_GetProfileInfo event, Emitter<ProfileState> emit) async {
    if (state.isProfileLoaded) {
      return;
    }
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final profileEntity = await getProfileInfoUseCase.call(null);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        profile: profileEntity,
        isProfileLoaded: true,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _editProfileInfo(_EditProfileInfo event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await editProfileInfoUseCase.call(event.profileEntity);
      final profileEntity = await getProfileInfoUseCase.call(null);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        isProfileLoaded: true,
        profile: profileEntity,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }

  Future<void> _uploadImage(_UploadImage event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await uploadImageUseCase.call(event.imageFile);
      final profileEntity = await getProfileInfoUseCase.call(null);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        isProfileLoaded: true,
        profile: profileEntity,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
      ));
    }
  }
}
