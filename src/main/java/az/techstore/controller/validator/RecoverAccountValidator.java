package az.techstore.controller.validator;

import az.techstore.form.RecoverAccountForm;
import az.techstore.service.CommonService;
import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class RecoverAccountValidator implements Validator {

    @Autowired
    private CommonService commonService;

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz == RecoverAccountForm.class;
    }

    @Override
    public void validate(Object target, Errors errors) {
        RecoverAccountForm form = (RecoverAccountForm) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");

        if (!errors.hasFieldErrors("email")) {
            if (!GenericValidator.isEmail(form.getEmail())) {
                errors.rejectValue("email", "email.invalid");
            } else {
                if (!commonService.checkEmail(form.getEmail())) {
                    errors.rejectValue("email", "recoverAccountForm.email");
                }
            }
        }
    }
}
