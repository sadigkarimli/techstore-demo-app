package az.techstore.form;

public class RecoverAccountForm {
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "RecoverAccountForm{" +
                "email='" + email + '\'' +
                '}';
    }
}
