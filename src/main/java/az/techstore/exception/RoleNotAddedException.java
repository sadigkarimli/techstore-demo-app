package az.techstore.exception;


import az.techstore.domain.Role;
import az.techstore.domain.User;

public class RoleNotAddedException extends BaseException {
    private User user;
    private Role role;


    public RoleNotAddedException(User user, Role role) {
        this.user = user;
        this.role = role;
    }

    public RoleNotAddedException(long userId, Role role) {
        if (this.user == null) {
            this.user = new User();
        }
        this.user.setId(userId);
        this.role = role;
    }

    public RoleNotAddedException(User user, Role role, String message) {
        super(message);
        this.user = user;
        this.role = role;
    }

    public RoleNotAddedException(User user, Role role, String message, Throwable throwable) {
        super(message, throwable);
        this.user = user;
        this.role = role;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
