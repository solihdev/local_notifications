part of 'notification_add_bloc.dart';

abstract class NotificationEvent {}

class AddNotification extends NotificationEvent{
  AddNotification({required this.notificationModel});
  final NotificationModel notificationModel;
}