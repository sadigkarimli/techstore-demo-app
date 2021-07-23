package az.techstore.controller;

import az.techstore.domain.User;
import az.techstore.security.SecurityUserDetail;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Security;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("admin/index");
        SecurityUserDetail userDetail = (SecurityUserDetail) SecurityContextHolder
                .getContext().getAuthentication().getPrincipal();
        User user = userDetail.getUser();
        mav.addObject("user", user);
        return mav;
    }


    @GetMapping("/user-list")
    public String userManaging() {
        return "admin/user-list";
    }

}
