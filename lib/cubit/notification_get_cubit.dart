import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notifications/cubit/notification_get_state.dart';
import 'package:local_notifications/data/local_db/local_database.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(InitialNotificationState()) {
    getAllNotifications();
  }

  getAllNotifications() async {
    emit(LoadNotificationProgress());
    List notifications = await LocalDatabase.getAllNotifications();
    emit(LoadNotificationSuccess(notifications: notifications));
  }
}
