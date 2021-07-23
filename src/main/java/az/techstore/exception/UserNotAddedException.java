package az.techstore.exception;

import az.techstore.domain.User;

public class UserNotAddedException extends BaseException {
    private User user;

    public UserNotAddedException(String message) {
        super(message);
    }

    public UserNotAddedException(String message, Throwable throwable) {
        super(message, throwable);
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
