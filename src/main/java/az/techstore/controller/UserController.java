package az.techstore.controller;

import az.techstore.controller.validator.ProfileInfoValidator;
import az.techstore.domain.User;
import az.techstore.form.ProfileInfoForm;
import az.techstore.security.SecurityUserDetail;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/user")
public class UserController {

    private static Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    ProfileInfoValidator profileInfoValidator;
    @InitBinder
    private void initBinder(WebDataBinder dataBinder) {
        Object target = dataBinder.getTarget();
        if (target != null && target.getClass() == ProfileInfoForm.class) {
            dataBinder.setValidator(profileInfoValidator);
        }
    }
    @GetMapping("/")
    public ModelAndView userIndex() {
        ModelAndView mav = new ModelAndView("user/index");
        SecurityUserDetail userPrincipal = (SecurityUserDetail) SecurityContextHolder
                .getContext().getAuthentication().getPrincipal();
        User user = userPrincipal.getUser();
        ProfileInfoForm profileInfoForm = new ProfileInfoForm();
        mav.addObject("profileInfoForm", profileInfoForm);
        mav.addObject("user", user);
        return mav;
    }

    @PostMapping("/")
    public ModelAndView profileInfo(Model model,
                          @ModelAttribute("profileInfoForm") @Validated ProfileInfoForm profileInfoForm,
                          BindingResult result) {
        ModelAndView mav = new ModelAndView();

        if (result.hasErrors()) {
            mav.setViewName("user/index");
            logger.info("Profile info form is invalid");
        } else {
            mav.setViewName("redirect:/user/");
            logger.warn("Profile info form is valid");
        }
        return mav;
    }

    @GetMapping("/address-setting")
    public ModelAndView addressSetting() {
        ModelAndView mav = new ModelAndView("user/setting-address");
        SecurityUserDetail userPrincipal = (SecurityUserDetail) SecurityContextHolder
                .getContext().getAuthentication().getPrincipal();
        User user = userPrincipal.getUser();

        mav.addObject("user", user);
        return mav;
    }
}
