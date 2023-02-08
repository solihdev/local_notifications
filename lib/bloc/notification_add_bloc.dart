import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notifications/data/models/notification_model/notification_model.dart';
import 'package:local_notifications/data/repositories/notification_repository.dart';

part 'notification_add_event.dart';

part 'notification_add_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc()
      : super(const NotificationState(
          notificationStatus: NotificationStatus.pure,
          notification: [],
          statusText: "",
        )) {
    on<AddNotification>(_addNotification);
  }

  _addNotification(
      AddNotification event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(statusText: NotificationStatus.loading.toString()));
    var newNotification = await NotificationRepository()
        .addNotification(notificationModel: event.notificationModel);
    if (newNotification.id != null) {
      emit(state.copyWith(
          notificationStatus: NotificationStatus.notificationAdded));
    }
  }
}
