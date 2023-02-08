part of 'notification_add_bloc.dart';

class NotificationState extends Equatable {
  final NotificationStatus notificationStatus;
  final String statusText;
  final List<NotificationModel> notification;

  const NotificationState({
    required this.notificationStatus,
    required this.notification,
    required this.statusText,
  });

  NotificationState copyWith({
    NotificationStatus? notificationStatus,
    List<NotificationModel>? notification,
    String? statusText,
  }) =>
      NotificationState(
        notificationStatus: notificationStatus ?? this.notificationStatus,
        notification: notification ?? this.notification,
        statusText: statusText ?? this.statusText,
      );

  @override
  List<Object?> get props => [notificationStatus, statusText, notification];
}

enum NotificationStatus {
  loading,
  pure,
  notificationAdded,
  notificationUpdated,
  notificationDeleted,
}
