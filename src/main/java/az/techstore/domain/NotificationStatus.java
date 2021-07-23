package az.techstore.domain;

import java.util.Arrays;

public enum  NotificationStatus {
    PENDING(0),
    IN_PROGRESS(1),
    SUCCESS(2),
    ERROR(3);

    int status;

    NotificationStatus(int status) {
        this.status = status;
    }

    public int getStatus() {
        return status;
    }

    public static NotificationStatus from(int s) {
        return Arrays.stream(values())
                .filter(f -> f.status == s)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown notification status " + s));

    }


}
