abstract class NotificationState {}

class InitialNotificationState extends NotificationState {}

class LoadNotificationProgress extends NotificationState {}

class LoadNotificationSuccess extends NotificationState {
  LoadNotificationSuccess({required this.notifications});

  final List notifications;
}

class LoadNotificationFailure extends NotificationState {}
