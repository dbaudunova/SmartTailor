part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.saveNoti({required NotificationModel notification}) = _SaveNoti;
  const factory NotificationEvent.loadNotifications() = _LoadNotifications;
}
