package az.techstore.util;

import az.techstore.domain.User;
import az.techstore.form.RegistrationForm;

public class FormToClassUtil {

    public static User convertUser(RegistrationForm form) {
        User user = new User();
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setEmail(form.getEmail());
        user.setPassword(form.getPassword());
        return user;
    }

}
