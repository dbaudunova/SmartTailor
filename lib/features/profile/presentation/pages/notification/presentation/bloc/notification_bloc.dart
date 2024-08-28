import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_smart_tailor/core/network/entity/failure.dart';
import 'package:neobis_smart_tailor/core/network/entity/state_status.dart';
import 'package:neobis_smart_tailor/features/profile/domain/use_case/get_order_history_for_user_use_case.dart';
import 'package:neobis_smart_tailor/features/profile/presentation/pages/notification/data/models/notification_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notification_event.dart';

part 'notification_state.dart';

part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetOrderHistoryForUserUseCase getOrderHistoryForUserUseCase;

  NotificationBloc(
    this.getOrderHistoryForUserUseCase,
  ) : super(
          const NotificationState(
            stateStatus: StateStatus.initial(),
            notificationList: [],
          ),
        ) {
    on<_SaveNoti>(_saveNoti);
    on<_LoadNotifications>(_loadNotifications);
  }

  Future<void> _loadNotifications(
    _LoadNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString('notifications');
      if (jsonString != null) {
        final List<dynamic> jsonList = jsonDecode(jsonString);
        final notifications = jsonList.map((json) => NotificationModel.fromJson(json as Map<String, dynamic>)).toList();
        emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          notificationList: notifications,
        ));
      } else {
        emit(state.copyWith(
          stateStatus: const StateStatus.success(),
          notificationList: [],
        ));
      }
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }

  Future<void> _saveNoti(
    _SaveNoti event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    try {
      final notification = event.notification;
      final updatedNotifications = List<NotificationModel>.from(state.notificationList!)..add(notification);
      final prefs = await SharedPreferences.getInstance();
      final encodedData = jsonEncode(
        updatedNotifications.map((e) => e.toJson()).toList(),
      );
      await prefs.setString('notifications', encodedData);

      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        notificationList: updatedNotifications,
      ));
    } catch (e) {
      final errorMessage = e is Failure ? e.message : 'Произошла ошибка';
      emit(state.copyWith(stateStatus: StateStatus.failure(message: errorMessage!)));
    }
  }
}
