import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/entitys/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_profile_info_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/send_subscription_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/sign_out_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/upload_image_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@singleton
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
          const ProfileState(stateStatus: StateStatus.initial(), subscriptionSend: false),
        ) {
    on<_SignOut>(_signOut);
    on<_GetProfileInfo>(_getProfileInfo);
    on<_EditProfileInfo>(_editProfileInfo);
    on<_SendSubscription>(_sendSubscription);
    on<_GetImage>(_getImage);
  }

  Future<void> _getImage(
    _GetImage event,
    Emitter<ProfileState> emit,
  ) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: event.source, imageQuality: event.imageQuality ?? 100);
    var image = File(pickedFile!.path);
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await uploadImageUseCase.call(image);
      var profileEntity = await getProfileInfoUseCase.call(null);

      emit(state.copyWith(stateStatus: const StateStatus.success(), profile: profileEntity));
      // if (state.profile!.imagePath != null) {
      //   CachedNetworkImage.evictFromCache(state.profile!.imagePath!);
      // }
      // print("Current state image path: ${state.profile!.imagePath}");
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!), subscriptionSend: false));
    }
  }

  Future<void> _sendSubscription(
    _SendSubscription event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await sendSubscriptionUseCase.call(null);
      emit(state.copyWith(stateStatus: const StateStatus.success(), subscriptionSend: true));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!), subscriptionSend: false));
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
  }

  Future<void> _getProfileInfo(_GetProfileInfo event, Emitter<ProfileState> emit) async {
    if (state.isProfileLoaded) {
      return;
    }
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final profileEntity = await getProfileInfoUseCase.call(null);
      var isSubscriptionConfirmed = profileEntity.hasSubscription!;
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        profile: profileEntity,
        isProfileLoaded: true,
        subscriptionSend: isSubscriptionConfirmed ? true : state.subscriptionSend,
      ));

      print(' iMAGEpath ${state.profile!.imagePath}');
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

  // Future<void> _uploadImage(_UploadImage event, Emitter<ProfileState> emit) async {
  //   emit(state.copyWith(stateStatus: const StateStatus.loading()));
  //   try {
  //     await uploadImageUseCase.call(event.imageFile);
  //     final profileEntity = await getProfileInfoUseCase.call(null);
  //     emit(state.copyWith(
  //       stateStatus: const StateStatus.success(),
  //       isProfileLoaded: true,
  //       profile: profileEntity,
  //     ));
  //   } catch (e) {
  //     final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
  //     emit(state.copyWith(
  //       stateStatus: StateStatus.failure(message: errorMessage!),
  //     ));
  //   }
  // }
}
