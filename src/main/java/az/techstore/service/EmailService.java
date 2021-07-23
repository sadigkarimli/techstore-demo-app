package az.techstore.service;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

public interface EmailService {
    void sendEmail(String from, String to, String subject, String content) throws MessagingException;
}
