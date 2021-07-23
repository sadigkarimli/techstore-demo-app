package az.techstore.domain;

import java.util.Objects;

public class Notification extends Base{
    private String from;
    private String to;
    private String subject;
    private String content;
    private NotificationStatus notificationStatus;
    private NotificationType type;
    private String logData;
    private String source;

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String context) {
        this.content = context;
    }

    public NotificationStatus getNotificationStatus() {
        return notificationStatus;
    }

    public void setNotificationStatus(NotificationStatus notificationStatus) {
        this.notificationStatus = notificationStatus;
    }

    public NotificationType getType() {
        return type;
    }

    public void setType(NotificationType type) {
        this.type = type;
    }

    public String getLogData() {
        return logData;
    }

    public void setLogData(String logData) {
        this.logData = logData;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Notification that = (Notification) o;
        return id == that.id &&
                from.equals(that.from) &&
                to.equals(that.to) &&
                subject.equals(that.subject) &&
                content.equals(that.content) &&
                type == that.type &&
                notificationStatus == that.notificationStatus &&
                source.equals(that.source) &&
                logData.equals(that.logData) &&
                insertDate.equals(that.insertDate) &&
                lastUpdate.equals(that.lastUpdate) &&
                status == that.status;
    }

    @Override
    public int hashCode() {
        return Objects.hash(from, to, subject, content, type, notificationStatus, source, logData, insertDate, lastUpdate, status, id);
    }

    @Override
    public String toString() {
        return "Notification{" +
                "id=" + id +
                ", from='" + from + '\'' +
                ", to='" + to + '\'' +
                ", subject='" + subject + '\'' +
                ", content='" + content + '\'' +
                ", type=" + type +
                ", source='" + source + '\'' +
                ", notificationStatus=" + notificationStatus +
                ", logData='" + logData + '\'' +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                ", status=" + status +
                '}';
    }
}
