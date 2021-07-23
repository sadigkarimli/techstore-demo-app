package az.techstore.controller.validator;

import az.techstore.form.RegistrationForm;
import az.techstore.service.CommonService;
import az.techstore.util.FormToClassUtil;
import az.techstore.util.ValidationUtil;
import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import static az.techstore.controller.validator.ValidationConstant.*;

@Component
public class RegistrationFormValidator implements Validator {

    @Autowired
    CommonService commonService;

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz == RegistrationForm.class;
    }

    @Override
    public void validate(Object target, Errors errors) {
        RegistrationForm form = (RegistrationForm) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "firstName.required");
        if (!errors.hasFieldErrors("firstName")) {
            if (!ValidationUtil.isStringAlphabet(form.getFirstName())) {
                errors.rejectValue("firstName", "firstName.format");
            } else {
                if (!GenericValidator.isInRange(form.getFirstName().length(), FIRST_NAME_MIN_LENGTH, FIRST_NAME_MAX_LENGTH)) {
                    errors.rejectValue("firstName", "firstName.length");
                }
            }
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "lastName.required");
        if (!errors.hasFieldErrors("lastName")) {
            if (!ValidationUtil.isStringAlphabet(form.getLastName())) {
                errors.rejectValue("lastName", "lastName.format");
            } else {
                if (!GenericValidator.isInRange(form.getLastName().length(), LAST_NAME_MIN_LENGTH, LAST_NAME_MAX_LENGTH)) {
                    errors.rejectValue("lastName", "lastName.length");
                }
            }
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
        if (!GenericValidator.isEmail(form.getEmail()) && !errors.hasFieldErrors("email")) {
            errors.rejectValue("email", "email.invalid");
        } else {
            if (commonService.checkEmail(form.getEmail())) {
                errors.rejectValue("email", "registrationForm.email.duplicate");
            }
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"password", "password.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors,"confirmPassword", "confirmPassword.required");

        if (!errors.hasFieldErrors("password") && !errors.hasFieldErrors("confirmPassword")) {
            if (!GenericValidator.isInRange(form.getPassword().length(), PASSWORD_MIN_LENGTH, PASSWORD_MAX_LENGTH)) {
                errors.rejectValue("password",
                        String.format("password.length", PASSWORD_MIN_LENGTH, PASSWORD_MAX_LENGTH));
            } else {
                if (!form.getConfirmPassword().equals(form.getPassword())) {
                    errors.rejectValue("confirmPassword", "password.mismatch");
                }
            }
        }
    }
}
