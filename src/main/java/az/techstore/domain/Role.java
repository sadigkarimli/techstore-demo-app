package az.techstore.domain;

import java.util.Arrays;

public enum Role {
    ADMIN(1),
    MODERATOR(2),
    USER(3);

    private int roleId;
    private String name;
    private String successPage;
    private int priority;

    Role(int roleId) {
        this.roleId = roleId;
    }

    Role(int roleId, String name, String successPage, int priority) {
        this.roleId = roleId;
        this.name = name;
        this.successPage = successPage;
        this.priority = priority;
    }

    public int getRoleId() {
        return roleId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSuccessPage() {
        return successPage;
    }

    public void setSuccessPage(String successPage) {
        this.successPage = successPage;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public static Role fromValue(int id) {
        Role role = null;

        role = Arrays.stream(values())
                .filter(f -> f.roleId == id)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown user role value " + id));

        return role;
    }

    @Override
    public String toString() {
        return "Role{" +
                "roleId=" + roleId +
                ", name='" + name + '\'' +
                ", successPage='" + successPage + '\'' +
                ", priority=" + priority +
                '}';
    }
}
