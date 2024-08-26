part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required final StateStatus stateStatus,
    required final List<NotificationModel>? notificationList,
  }) = _NotificationState;
}
