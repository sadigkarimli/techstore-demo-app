package az.techstore.service.impl;

import az.techstore.domain.Notification;
import az.techstore.domain.NotificationType;
import az.techstore.repository.NotificationRepository;
import az.techstore.service.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NotificationServiceImpl implements NotificationService {
    @Autowired
    private NotificationRepository notificationRepository;
    @Override
    public Notification addNotification(Notification notification) {
        return notificationRepository.addNotification(notification);
    }

    @Override
    public List<Notification> getPendingNotifications(NotificationType notificationType, int limit) {
        return notificationRepository.getPendingNotifications(notificationType,limit);
    }

    @Override
    public Notification updateNotification(Notification notification) {
        return notificationRepository.updateNotification(notification);
    }

    @Override
    public Optional<Notification> getNotificationById(long id) {
        return notificationRepository.getNotificationById(id);
    }
}
