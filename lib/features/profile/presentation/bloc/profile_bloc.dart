import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/announcement_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/model/profile_entity.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/edit_profile_info_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_equipments_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_orders_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_my_services_use_case.dart';
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
  final GetMyOrdersUseCase getMyOrdersUseCase;
  final GetMyEquipmentsUseCase getMyEquipmentsUseCase;
  final GetMyServicesUseCase getMyServicesUseCase;

  ProfileBloc({
    required this.sendSubscriptionUseCase,
    required this.signOutUseCase,
    required this.getProfileInfoUseCase,
    required this.editProfileInfoUseCase,
    required this.uploadImageUseCase,
    required this.getMyOrdersUseCase,
    required this.getMyEquipmentsUseCase,
    required this.getMyServicesUseCase,
  }) : super(
          const ProfileState(
              stateStatus: StateStatus.initial(),
              services: [],
              equipments: [],
              orders: [],
              lastForEquipment: false,
              lastForOrders: false,
              lastForServices: false,
              ordersPageNumber: 0,
              equipmentsPageNumber: 0,
              servicesPageNumber: 0,
              equipmentTotalCount: 0,
              ordersTotalCount: 0,
              servicesTotalCount: 0,
              isLoadingMore: false,
              subscriptionSend: false),
        ) {
    on<_SignOut>(_signOut);
    on<_GetProfileInfo>(_getProfileInfo);
    on<_EditProfileInfo>(_editProfileInfo);
    on<_UploadImage>(_uploadImage);
    on<_GetOrders>(_getMyOrders);
    on<_GetEquipments>(_getMyEquipments);
    on<_GetServices>(_getMyServices);
    on<_GetAll>(_getAll);
    on<_LoadMoreOrders>(_loadMoreOrders);
    on<_LoadMoreEquipments>(_loadMoreEquipments);
    on<_LoadMoreServices>(_loadMoreServices);
    on<_SendSubscription>(_sendSubscription);
  }

  Future<void> _sendSubscription(
    _SendSubscription event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      await sendSubscriptionUseCase.call(null);

      // Отметить подписку как отправленную
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
        subscriptionSend: isSubscriptionConfirmed! ? true : state.subscriptionSend,
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

  Future<void> _getMyEquipments(
    _GetEquipments event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    try {
      final result = await getMyEquipmentsUseCase.call(pageNumber: 0);
      print(result.totalCount);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          equipments: result.advertisement ?? [],
          equipmentsPageNumber: 1,
          isAnnouncementsLoaded: true,
          lastForEquipment: result.isLast));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getMyOrders(
    _GetOrders event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getMyOrdersUseCase.call(pageNumber: 0);
      print(result.totalCount);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          orders: result.advertisement ?? [],
          ordersPageNumber: 1,
          isAnnouncementsLoaded: true,
          lastForOrders: result.isLast));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _getMyServices(
    _GetServices event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final result = await getMyServicesUseCase.call(pageNumber: 0);
      print(result.totalCount);
      emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          services: result.advertisement ?? [],
          servicesPageNumber: 1,
          isAnnouncementsLoaded: true,
          lastForServices: result.isLast));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _loadMoreOrders(
    _LoadMoreOrders event,
    Emitter<ProfileState> emit,
  ) async {
    if (state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final result = await getMyOrdersUseCase.call(pageNumber: state.ordersPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        orders: List<AnnouncementEntity>.from(state.orders)..addAll(result.advertisement ?? []),
        ordersPageNumber: state.ordersPageNumber + 1,
        lastForOrders: result.isLast!,
        isLoadingMore: false,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMore: false,
      ));
    }
  }

  Future<void> _loadMoreEquipments(
    _LoadMoreEquipments event,
    Emitter<ProfileState> emit,
  ) async {
    if (state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final result = await getMyEquipmentsUseCase.call(pageNumber: state.equipmentsPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        equipments: List<AnnouncementEntity>.from(state.equipments)..addAll(result.advertisement ?? []),
        equipmentsPageNumber: state.equipmentsPageNumber + 1,
        isLoadingMore: result.isLast!,
        lastForEquipment: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMore: false,
      ));
    }
  }

  Future<void> _loadMoreServices(
    _LoadMoreServices event,
    Emitter<ProfileState> emit,
  ) async {
    if (state.isLoadingMore) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    try {
      final result = await getMyServicesUseCase.call(pageNumber: state.servicesPageNumber);
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: List<AnnouncementEntity>.from(state.services)..addAll(result.advertisement ?? []),
        servicesPageNumber: state.servicesPageNumber + 1,
        isLoadingMore: result.isLast!,
        lastForServices: result.isLast!,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(
        stateStatus: StateStatus.failure(message: errorMessage!),
        isLoadingMore: false,
      ));
    }
  }

  Future<void> _getAll(
    _GetAll event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final results = await Future.wait([
        getMyServicesUseCase.call(pageNumber: 0),
        getMyOrdersUseCase.call(pageNumber: 0),
        getMyEquipmentsUseCase.call(pageNumber: 0),
      ]);

      final services = results[0].advertisement;
      final orders = results[1].advertisement;
      final equipments = results[2].advertisement;

      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        services: services ?? [],
        equipments: equipments ?? [],
        orders: orders ?? [],
        lastForEquipment: results[2].isLast,
        lastForOrders: results[1].isLast,
        lastForServices: results[0].isLast,
        servicesPageNumber: 1,
        isAnnouncementsLoaded: true,
        ordersPageNumber: 1,
        equipmentsPageNumber: 1,
        equipmentTotalCount: results[2].totalCount ?? 0,
        ordersTotalCount: results[1].totalCount ?? 0,
        servicesTotalCount: results[0].totalCount ?? 0,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
