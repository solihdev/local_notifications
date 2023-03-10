import 'package:local_notifications/data/local_db/local_database.dart';
import 'package:local_notifications/data/models/notification_model/notification_model.dart';

class NotificationRepository {
  Future<NotificationModel> addNotification(
      {required NotificationModel notificationModel}) =>
      LocalDatabase.addNotification(notificationModel);

  Future<List<NotificationModel>> getAllNotification() =>
      LocalDatabase.getAllNotifications();
}