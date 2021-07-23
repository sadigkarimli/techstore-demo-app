package az.techstore.schedule;

import az.techstore.domain.Notification;
import az.techstore.domain.NotificationStatus;
import az.techstore.domain.NotificationType;
import az.techstore.service.EmailService;
import az.techstore.service.NotificationService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Schedule {
    private static final Logger logger  = Logger.getLogger(Schedule.class);

    @Autowired
    private NotificationService notificationService;

    @Autowired
    private EmailService emailService;

    /*@Scheduled(fixedRate = 5 * 1000)*/
    public void processNotificationQueue() {
        System.out.println("notification queue process start");
        // todo edit config for limit
        List<Notification> pendingEmailNotifications = notificationService.getPendingNotifications(NotificationType.EMAIL, 5);
        logger.info("the number of pending email notifications: " + pendingEmailNotifications.size());
        pendingEmailNotifications.forEach(this::processEmailNotifications);

    }

    public void processEmailNotifications(Notification notification) {
        notification.setNotificationStatus(NotificationStatus.IN_PROGRESS);
        notificationService.updateNotification(notification);

        try {
            System.out.println("process notification " + notification);
            emailService.sendEmail(notification.getFrom(), notification.getTo(),
                    notification.getSubject(), notification.getContent());
            notification.setNotificationStatus(NotificationStatus.SUCCESS);
            logger.info("send email notification id: " + notification.getId() + " status: success");
        } catch (Exception e) {
            logger.error("Error sending email notification id: " + notification.getId());
            notification.setNotificationStatus(NotificationStatus.ERROR);
            notification.setLogData(e.getMessage());
        }

        notificationService.updateNotification(notification);
    }
}
