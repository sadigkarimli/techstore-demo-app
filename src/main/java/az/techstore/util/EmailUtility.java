package az.techstore.util;

import az.techstore.domain.Notification;
import az.techstore.domain.NotificationType;
import az.techstore.domain.Token;
import az.techstore.domain.User;
import notification.EmailTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.time.format.DateTimeFormatter;
import java.util.Locale;

@Component
public class EmailUtility {

    @Value("${base.url}")
    private String baseUrl;

    @Value(("${registration.email.from}"))
    private String fromEmail;

    @Value(" ${registration.source.text}")
    private String registrationSource;

    public String getRegistrationEmailContent(Token token, User user) {
        String activationLink = baseUrl + "activate?token=" + token.getValue();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String registrationEmail = String.format(EmailTemplate.REGISTRATION_TEMPLATE, user.getFirstName(), user.getLastName(), activationLink, token.getExpireDate().format(formatter));
        return registrationEmail;
    }

    public String getRegistrationEmailSubject() {
        return EmailTemplate.REGISTRATION_SUBJECT;
    }

    public Notification getEmailNotification(String to, String subject, String content, String source) {
        Notification emailNotification = new Notification();
        emailNotification.setFrom(fromEmail);
        emailNotification.setTo(to);
        emailNotification.setType(NotificationType.EMAIL);
        emailNotification.setSubject(subject);
        emailNotification.setContent(content);
        emailNotification.setSource(source);
        return emailNotification;
    }

    public Notification getEmailNotification(String from, String to, String subject, String content, String source) {
        return getEmailNotification(from, to, subject, content, source);
    }
}
