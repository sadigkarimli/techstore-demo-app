package az.techstore.controller;

import az.techstore.controller.validator.RecoverAccountValidator;
import az.techstore.controller.validator.RegistrationFormValidator;
import az.techstore.domain.User;
import az.techstore.form.RecoverAccountForm;
import az.techstore.form.RegistrationForm;
import az.techstore.service.UserService;
import az.techstore.util.FormToClassUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class WebController {


    private static Logger logger = Logger.getLogger(WebController.class);

    @Autowired
    private RegistrationFormValidator registrationFormValidator;

    @Autowired
    private RecoverAccountValidator recoverAccountValidator;

    @Autowired
    private UserService userService;

    @InitBinder
    private void initBinder(WebDataBinder dataBinder) {
        Object target = dataBinder.getTarget();
        if (target != null && target.getClass() == RegistrationForm.class) {
            dataBinder.setValidator(registrationFormValidator);
        }
        if (target != null && target.getClass() == RecoverAccountForm.class) {
            dataBinder.setValidator(recoverAccountValidator);
        }
    }

    @GetMapping("/")
    public String index() {
        return "web/index";
    }

    @GetMapping("/admin")
    public String redirectAdmin() {
        return "redirect:/admin/";
    }

    @GetMapping("/user")
    public String redirectUser() {
        return "redirect:/user/";
    }

    @GetMapping("/user/welcome")
    public String redirectWelcome() {
        return "redirect:/user/welcome";
    }

    @GetMapping("/register")
    public ModelAndView registerIndex() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("web/register");
        RegistrationForm form = new RegistrationForm();
        mav.addObject("registrationForm", form);
        return mav;
    }

    @PostMapping("/register")
    public ModelAndView register(Model model,
                                 @ModelAttribute("registrationForm") @Validated RegistrationForm form,
                                 BindingResult result) {
        ModelAndView mav = new ModelAndView("web/register-success");
        if (result.hasErrors()) {
            logger.warn("Registration form inputs is invalid");
            mav.setViewName("web/register");
        } else {
            logger.info("Registration form inputs is valid");
            User user = FormToClassUtil.convertUser(form);
            String userName = user.getFirstName() + " " + user.getLastName();
            mav.addObject("userName", userName);
            System.out.println(userName);
            userService.addUser(user);
        }
        return mav;
    }

    @GetMapping("/recover-account")
    public ModelAndView recoverAccountIndex() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("web/recover-account");
        RecoverAccountForm form = new RecoverAccountForm();
        mav.addObject("recoverAccountForm", form);
        return mav;
    }

    @PostMapping("/recover-account")
    public ModelAndView recoverAccount(Model model, @ModelAttribute("recoverAccountForm")
                        @Validated RecoverAccountForm form, BindingResult result) {
        ModelAndView mav = new ModelAndView("web/login");
        if (result.hasErrors()) {
            logger.warn("Recover account input is invalid");
            mav.setViewName("web/recover-account");
        } else {
            logger.info("Recover account input is valid");
        }
        return mav;
    }


    @GetMapping("/login")
    public String login() {
        return "web/login";
    }


    @GetMapping("/product")
    public String productDetail() {
        return "web/product";
    }

    @GetMapping("/category")
    public String categoryDetail() {
        return "web/categories";
    }

    @GetMapping("/shop")
    public String shopIndex() {
        return "web/shop";
    }

    @GetMapping("/about-us")
    public String aboutUs() {
        return "web/about-us";
    }

    @GetMapping("/contact")
    public String contactUs() {
        return "web/contact";
    }

    @GetMapping("/help-center")
    public String helpCenterIndex() {
        return "web/help-center-category";
    }







}
