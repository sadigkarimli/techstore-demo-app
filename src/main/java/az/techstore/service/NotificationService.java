package az.techstore.service;

import az.techstore.domain.Notification;
import az.techstore.domain.NotificationType;

import java.util.List;
import java.util.Optional;

public interface NotificationService {
    Notification addNotification(Notification notification);
    List<Notification> getPendingNotifications(NotificationType notificationType, int limit);
    Notification updateNotification(Notification notification);
    Optional<Notification> getNotificationById(long id);
}
