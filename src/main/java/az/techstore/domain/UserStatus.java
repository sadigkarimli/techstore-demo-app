package az.techstore.domain;

import java.util.Arrays;

public enum UserStatus {
    PENDING(0),
    ACTIVE(1),
    BLOCKED(2),
    DELETED(3);

    private int status;

    UserStatus(int status) {
        this.status = status;
    }

    public static UserStatus fromStatus(int status) {
        UserStatus userStatus = null;

        userStatus = Arrays.stream(values())
                .filter(us -> us.status == status)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown user status " + status));

        return userStatus;
    }
}
